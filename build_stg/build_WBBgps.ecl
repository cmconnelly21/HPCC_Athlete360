﻿IMPORT Athlete360, STD;

// First_step get the spray file from files_spray
sprayFile := Athlete360.files_spray.WBBgpsfile;

// get the layout (processed layout)
stgLayout := Athlete360.Layouts.WBBgps_stg;

// do all preprocessing actions and get the cleaned data from spray
stgLayout extractdata (Athlete360.Layouts.WBBgps L):= transform
																								SELF.date := STD.date.fromstringtodate(L.date,'%d/%m/%Y');
																								SELF.Name := L.Name;
																								SELF.Period := L.Period;
																								SELF.Periodnum := (UNSIGNED3)L.Periodnum;
																								SELF.Position := L.Position;
																								SELF.IMATotal := (UNSIGNED2)L.IMATotal;
																								SELF.PlayerLoad := (DECIMAL5_2)L.PlayerLoad;
																								SELF.PlayerLoadpermin:= (DECIMAL5_2)L.PlayerLoadpermin;
																								SELF.TRIMP := (DECIMAL5_2)L.TRIMP;
																								SELF.TRIMPpermin := (DECIMAL5_2)L.TRIMPpermin;
																								SELF.endtime := (UNSIGNED4)L.endtime;
																								SELF.starttime := (UNSIGNED4)L.starttime;
																								SELF.totaltime := (UNSIGNED4)L.totaltime;
																								SELF.HRover92 := (UNSIGNED4)L.HRover92;
																								SELF.HRover85 := (UNSIGNED4)L.HRover85;
																								SELF.HRexertion := (UNSIGNED3)L.HRexertion;
																								SELF.MaxHR := (UNSIGNED2)L.MaxHR;
																								SELF.exertionindex := (DECIMAL5_2)L.exertionindex;
																								SELF.MaxAccel := (UNSIGNED2)L.MaxAccel;
																								SELF.MaxDecel := (UNSIGNED2)L.MaxDecel;
																								SELF.MaxVelocity := (UNSIGNED2)L.MaxVelocity;
																								SELF.Acceldensity := (UNSIGNED2)L.Acceldensity;
																								SELF.Acceldensityindex := (DECIMAL5_2)L.Acceldensityindex;
																								SELF.IMAcount := (UNSIGNED2)L.IMAcount;
																								SELF.IMAcodLmax := (UNSIGNED2)L.IMAcodLmax;
																								SELF.IMAcodRmax := (UNSIGNED2)L.IMAcodRmax;
																								SELF.Jumpstotal := (UNSIGNED2)L.Jumpstotal;
																								SELF.Jumpspermin := (DECIMAL5_2)L.Jumpspermin;
																								SELF.athleteid := 0;
																								SELF.wuid := workunit;
																								
END;																					 
	 
	 cleanedSprayFile := PROJECT(sprayFile, extractdata(LEFT));

// after we get the cleaned spray, add wtih currently staged file, dedup by unique fields

finalStageData := DEDUP(
        SORT(
            cleanedSprayFile + Athlete360.files_stg.WBBgps_stgfile,
            NAME, DATE, Period, starttime, totaltime, -wuid),
        NAME, DATE, Period, starttime, totaltime
    );

mapfile := Athlete360.files_stg.athleteinfo_stgfile;

//now we link the stagedata with the athleteid related to the names from the athleteinfo file
completestgdata := join(finalStageData,

Athlete360.files_stg.Athleteinfo_stgfile,

Athlete360.util.toUpperTrim(left.name) = Athlete360.util.toUpperTrim(right.name),

transform({RECORDOF(LEFT)}, SELF.Athleteid := RIGHT.athleteid; SELF := LEFT;), 

left outer

);
// by above, you will have concatenated set consists of prevoius data and new spray data, making sure no duplicates created.
// promote  the final dataset into stage gile
EXPORT build_WBBgps := Athlete360.util.fn_promote_ds(Athlete360.util.constants.stg_prefix,  Athlete360.util.constants.WBBgps_name, completestgData);