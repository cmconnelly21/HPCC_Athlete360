﻿IMPORT Athlete360, STD;

// First_step get the spray file from files_spray
sprayFile := Athlete360.files_spray.MSOCtrainingloadfile;

// get the layout (processed layout)
stgLayout := Athlete360.Layouts.MSOCtrainingload_stg;

// do all preprocessing actions and get the cleaned data from spray
stgLayout extractdata (Athlete360.Layouts.MSOCtrainingload L):= transform
									// SELF.Date := STD.date.FromStringToDate(L.Date,'%m/%d/%Y');
									self.date := (unsigned4)L.date;
									// SELF.Time := IF(std.str.splitwords(L.Time, ' ')[2]='PM',
									// 1200 + STD.date.FromStringToTime(L.Time,'%H:%M'),
									// STD.date.FromStringToTime(L.Time,'%H:%M'));
									self.time := (unsigned4)L.time;
                  // self.Name := L.Firstname + ' ' + L.Lastname;
									self.name := L.name;
									self.Rating := (DECIMAL5_2)L.Rating;
									self.Duration := (Unsigned1)L.Duration;
                  self.TrainingLoad := (Unsigned1)L.TrainingLoad;
                  self.Category := L.Category;
                  self.Team := L.Team;
									SELF.wuid := workunit;
																								
END;																					 
	 
	 cleanedSprayFile := PROJECT(sprayFile, extractdata(LEFT));

// after we get the cleaned spray, add wtih currently staged file, dedup by unique fields

finalStageData := DEDUP(
        SORT(
            cleanedSprayFile + Athlete360.files_stg.MSOCtrainingload_stgfile,
            NAME, DATE, TIME, -wuid),
        NAME, DATE, TIME
    );

mapfile := Athlete360.files_stg.athleteinfo_stgfile;

//now we link the stagedata with the athleteid related to the names from the athleteinfo file
completestgdata := join(finalStageData,

Athlete360.files_stg.Athleteinfo_stgfile,

Athlete360.util.toUpperTrim(left.name) = Athlete360.util.toUpperTrim(right.name),

transform({RECORDOF(LEFT)}, SELF.Athleteid := (unsigned3)RIGHT.athleteid; SELF := LEFT;),

left outer

);
// by above, you will have concatenated set consists of prevoius data and new spray data, making sure no duplicates created.
// promote  the final dataset into stage gile
EXPORT build_MSOCtrainingload := Athlete360.util.fn_promote_ds(Athlete360.util.constants.stg_prefix,  Athlete360.util.constants.MSOCtrainingload_name, completestgData);