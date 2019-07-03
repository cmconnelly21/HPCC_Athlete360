﻿IMPORT Athlete360, STD;

// First_step get the spray file from files_spray
sprayFile := Athlete360.files_spray.WSOCtestingfile;

// get the layout (processed layout)
stgLayout := Athlete360.Layouts.WSOCtesting_stg;

// do all preprocessing actions and get the cleaned data from spray
stgLayout extractdata (Athlete360.Layouts.WSOCtesting L):= transform
																								SELF.date := STD.date.fromstringtodate(L.date,'%d/%m/%Y');
																								SELF.Name := L.Name;
																								SELF.Test := L.Test;
																								SELF.IsitSpeed := L.IsitSpeed;
																								SELF.Trial1 := (DECIMAL5_2)L.Trial1;
																								SELF.Trial2 := (DECIMAL5_2)L.Trial2;
																								SELF.Trial3 := (DECIMAL5_2)L.Trial3;
																								SELF.Trial4 := (DECIMAL5_2)L.Trial4;
																								SELF.Trial5 := (DECIMAL5_2)L.Trial5;
																								SELF.Trial6 := (DECIMAL5_2)L.Trial6;
																								SELF.Average := (DECIMAL5_2)L.Average;
																								SELF.Bestscore := (DECIMAL5_2)L.Bestscore;
																								SELF.wuid := workunit;
																								
END;																					 
	 
	 cleanedSprayFile := PROJECT(sprayFile, extractdata(LEFT));

// after we get the cleaned spray, add wtih currently staged file, dedup by unique fields

finalStageData := DEDUP(
        SORT(
            cleanedSprayFile + Athlete360.files_stg.WSOCtesting_stgfile,
            NAME, DATE, -wuid),
        NAME, DATE
    );

mapfile := Athlete360.files_stg.athleteinfo_stgfile;

//now we link the stagedata with the athleteid related to the names from the athleteinfo file
completestgdata := join(dedup(sort(finalStageData, name), name),

Athlete360.files_stg.Athleteinfo_stgfile,

Athlete360.util.toUpperTrim(left.name) = Athlete360.util.toUpperTrim(right.name),

transform({RECORDOF(LEFT)}, SELF.Athleteid := RIGHT.athleteid; SELF := LEFT;),

left only

);
// by above, you will have concatenated set consists of prevoius data and new spray data, making sure no duplicates created.
// promote  the final dataset into stage gile
EXPORT build_WSOCtesting := Athlete360.util.fn_promote_ds(Athlete360.util.constants.stg_prefix,  Athlete360.util.constants.WSOCtesting_name, completestgData);