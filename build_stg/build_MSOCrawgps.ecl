﻿IMPORT Athlete360, STD;

// First_step get the spray file from files_spray
sprayFile := Athlete360.files_spray.MSOCrawgpsfile;

// get the layout (processed layout)
stgLayout := Athlete360.Layouts.MSOCrawgps_stg;

// do all preprocessing actions and get the cleaned data from spray
stgLayout extractdata (Athlete360.Layouts.MSOCrawgps L):= transform
																								SELF.time := L.Time;
																								SELF.Name := L.Name;
																								Self.Date := std.date.FromStringToDate(regexfind('([0-9][0-9]*\\-[0-9][0-9]*\\-[0-9]{4})',L.filename,1), '%d-%m-%Y');
																								// self.date := (unsigned4)L.date;
																								SELF.PlayerID := (UNSIGNED3)L.PlayerID;
																								SELF.HeartRate := (UNSIGNED3)L.HeartRate;
																								SELF.ElapsedTime := (DECIMAL10_5)L.ElapsedTime;
																								SELF.Latitude := (DECIMAL10_5)L.Latitude;
																								SELF.Longitude := (DECIMAL10_5)L.Longitude;
																								SELF.Speed := (DECIMAL10_5)L.Speed;
																								SELF.Accelimpulse := (DECIMAL10_5)L.Accelimpulse;
																								SELF.wuid := workunit;
																								
END;																					 
	 
	 cleanedSprayFile := PROJECT(sprayFile, extractdata(LEFT));

// after we get the cleaned spray, add wtih currently staged file, dedup by unique fields

finalStageData := DEDUP(
        SORT(
            cleanedSprayFile + Athlete360.files_stg.MSOCrawgps_stgfile,
            NAME, Date, Time, -wuid),
        NAME, Date, Time
    );

// mapfile := Athlete360.files_stg.athleteinfo_stgfile;

//now we link the stagedata with the athleteid related to the names from the athleteinfo file
// completestgdata := join(finalStageData,

// Athlete360.files_stg.Athleteinfo_stgfile,

// Athlete360.util.toUpperTrim(left.name) = Athlete360.util.toUpperTrim(right.name),

// transform({RECORDOF(LEFT)}, SELF.Athleteid := RIGHT.athleteid; SELF := LEFT;), 

// left outer

// );
// by above, you will have concatenated set consists of prevoius data and new spray data, making sure no duplicates created.
// promote  the final dataset into stage gile
EXPORT build_MSOCrawgps := Athlete360.util.fn_promote_ds(Athlete360.util.constants.stg_prefix,  Athlete360.util.constants.MSOCrawgps_name, finalStageData);