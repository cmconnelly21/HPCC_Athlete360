﻿IMPORT $;
IMPORT STD;

EXPORT MSOCgps := MODULE
	EXPORT Layout := RECORD
		STRING Name;
		STRING Position;
		STRING Sessiontype;
		STRING Week;
		STRING Date;
		STRING Drillname;
		STRING Drilltime;
		STRING Drilldistance;
		STRING distancepermin;
		STRING Highspeeddistance;
		STRING HighspeeddistanceR;
		STRING AverageHR;
		STRING Timeabove85;
		STRING HRexertion;
		STRING MaxHR;
		STRING HRz1;
		STRING Sprints;
		STRING DynamicStressloadtotal;
		STRING DynamicStressloadz1;
		STRING DynamicStressloadz2;
		STRING DynamicStressloadz3;
		STRING DynamicStressloadz4;
		STRING DynamicStressloadz5;
		STRING DynamicStressloadz6;
		STRING Totalloading;
		STRING Impacts;
		STRING Impactsz1;
		STRING Impactsz2;
		STRING Impactsz3;
		STRING Impactsz4;
		STRING Impactsz5;
		STRING Impactsz6;
		STRING MaxSpeed;
		STRING Distancez6;
		STRING Distancez6R;
		STRING HSRpermin;
		STRING HSRperminR;
		STRING Highintensityburstnum;
		STRING Accelerations;
		STRING Accelerationimp;
		STRING Accelerationsdisz1;
		STRING Accelerationsdisz2;
		STRING Accelerationsdisz3;
		STRING Accelerationsdisz4;
		STRING Accelerationsdisz5;
		STRING Accelerationsdisz6;
		STRING Accelerationsz1;
		STRING Accelerationsz2;
		STRING Accelerationsz3;
		STRING Accelerationsz4;
		STRING Accelerationsz5;
		STRING Accelerationsz6;
		STRING decelerations;
		STRING decelerationsz1;
		STRING decelerationsz2;
		STRING decelerationsz3;
		STRING decelerationsz4;
		STRING decelerationsz5;
		STRING decelerationsz6;
		STRING decelerationsdisz1;
		STRING decelerationsdisz2;
		STRING decelerationsdisz3;
		STRING decelerationsdisz4;
		STRING decelerationsdisz5;
		STRING decelerationsdisz6;
		STRING metabolicdis;
		STRING explosivedis;
		STRING highintensityburstdur;
	END;
	
	EXPORT Layout1 := RECORD
		STRING Name;
		STRING Position;
		STRING Sessiontype;
		UNSIGNED1 Week;
		UNSIGNED4 Date;
		STRING Drillname;
		DECIMAL5_2 Drilltime;
		DECIMAL10_5 Drilldistance;
		DECIMAL5_2 distancepermin;
		DECIMAL5_2 Highspeeddistance;
		DECIMAL5_2 HighspeeddistanceR;
		DECIMAL5_2 AverageHR;
		DECIMAL5_2 Timeabove85;
		DECIMAL5_2 HRexertion;
		DECIMAL5_2 MaxHR;
		DECIMAL5_2 HRz1;
		DECIMAL5_2 Sprints;
		DECIMAL5_2 DynamicStressloadtotal;
		DECIMAL5_2 DynamicStressloadz1;
		DECIMAL5_2 DynamicStressloadz2;
		DECIMAL5_2 DynamicStressloadz3;
		DECIMAL5_2 DynamicStressloadz4;
		DECIMAL5_2 DynamicStressloadz5;
		DECIMAL5_2 DynamicStressloadz6;
		DECIMAL5_2 Totalloading;
		STRING Impacts;
		STRING Impactsz1;
		STRING Impactsz2;
		STRING Impactsz3;
		STRING Impactsz4;
		STRING Impactsz5;
		STRING Impactsz6;
		DECIMAL5_2 MaxSpeed;
		DECIMAL5_2 Distancez6;
		DECIMAL5_2 Distancez6R;
		DECIMAL5_2 HSRpermin;
		DECIMAL5_2 HSRperminR;
		STRING Highintensityburstnum;
		STRING Accelerations;
		DECIMAL5_2 Accelerationimp;
		DECIMAL5_2 Accelerationsdisz1;
		DECIMAL5_2 Accelerationsdisz2;
		DECIMAL5_2 Accelerationsdisz3;
		DECIMAL5_2 Accelerationsdisz4;
		DECIMAL5_2 Accelerationsdisz5;
		DECIMAL5_2 Accelerationsdisz6;
		STRING Accelerationsz1;
		STRING Accelerationsz2;
		STRING Accelerationsz3;
		STRING Accelerationsz4;
		STRING Accelerationsz5;
		STRING Accelerationsz6;
		STRING decelerations;
		STRING decelerationsz1;
		STRING decelerationsz2;
		STRING decelerationsz3;
		STRING decelerationsz4;
		STRING decelerationsz5;
		STRING decelerationsz6;
		DECIMAL5_2 decelerationsdisz1;
		DECIMAL5_2 decelerationsdisz2;
		DECIMAL5_2 decelerationsdisz3;
		DECIMAL5_2 decelerationsdisz4;
		DECIMAL5_2 decelerationsdisz5;
		DECIMAL5_2 decelerationsdisz6;
		DECIMAL10_5 metabolicdis;
		DECIMAL10_5 explosivedis;
		STRING highintensityburstdur; 	
	END;

EXPORT File := DATASET('~athlete360::in::gpsgo1262019.csv',Layout,CSV(HEADING(1)));
	EXPORT processedfile := PROJECT(File,TRANSFORM(Layout1,SELF.date := STD.date.fromstringtodate(LEFT.date,'%Y/%m/%d');
																								SELF.Name := LEFT.Name;
																								SELF.Drillname := LEFT.Drillname;
																								SELF.Week := (UNSIGNED1)LEFT.Week;
																								SELF.Position := LEFT.Position;
																								SELF.Impacts := LEFT.Impacts;
																								SELF.Impactsz1 := LEFT.Impactsz1;
																								SELF.Impactsz2 := LEFT.Impactsz2;
																								SELF.Impactsz3 := LEFT.Impactsz3;
																								SELF.Impactsz4 := LEFT.Impactsz4;
																								SELF.Impactsz5 := LEFT.Impactsz5;
																								SELF.Impactsz6 := LEFT.Impactsz6;
																								SELF.Accelerations := LEFT.Accelerations;
																								SELF.Accelerationsz1 := LEFT.Accelerationsz1;
																								SELF.Accelerationsz2 := LEFT.Accelerationsz2;
																								SELF.Accelerationsz3 := LEFT.Accelerationsz3;
																								SELF.Accelerationsz4 := LEFT.Accelerationsz4;
																								SELF.Accelerationsz5 := LEFT.Accelerationsz5;
																								SELF.Accelerationsz6 := LEFT.Accelerationsz6;
																								SELF.Decelerations := LEFT.Decelerations;
																								SELF.Decelerationsz1 := LEFT.Decelerationsz1;
																								SELF.Decelerationsz2 := LEFT.Decelerationsz2;
																								SELF.Decelerationsz3 := LEFT.Decelerationsz3;
																								SELF.Decelerationsz4 := LEFT.Decelerationsz4;
																								SELF.Decelerationsz5 := LEFT.Decelerationsz5;
																								SELF.Decelerationsz6 := LEFT.Decelerationsz6;
																								SELF.highintensityburstnum := LEFT.highintensityburstnum;
																								SELF.highintensityburstdur := LEFT.highintensityburstdur;
																								SELF.Sessiontype := LEFT.Sessiontype;
																								SELF.Drilltime := (DECIMAL5_2)LEFT.Drilltime;
																								SELF.Drilldistance := (DECIMAL10_5)LEFT.Drilldistance;
																								SELF.Distancepermin := (DECIMAL5_2)LEFT.Distancepermin;
																								SELF.Highspeeddistance := (DECIMAL5_2)LEFT.Highspeeddistance;
																								SELF.HighspeeddistanceR := (DECIMAL5_2)LEFT.HighspeeddistanceR;
																								SELF.AverageHR := (DECIMAL5_2)LEFT.AverageHR;
																								SELF.timeabove85 := (DECIMAL5_2)LEFT.timeabove85;
																								SELF.HRexertion := (DECIMAL5_2)LEFT.HRexertion;
																								SELF.MaxHR := (DECIMAL5_2)LEFT.MaxHR;
																								SELF.HRz1 := (DECIMAL5_2)LEFT.HRz1;
																								SELF.sprints := (DECIMAL5_2)LEFT.sprints;
																								SELF.Dynamicstressloadtotal := (DECIMAL5_2)LEFT.Dynamicstressloadtotal;
																								SELF.Dynamicstressloadz1 := (DECIMAL5_2)LEFT.Dynamicstressloadz1;
																								SELF.Dynamicstressloadz2 := (DECIMAL5_2)LEFT.Dynamicstressloadz2;
																								SELF.Dynamicstressloadz3 := (DECIMAL5_2)LEFT.Dynamicstressloadz3;
																								SELF.Dynamicstressloadz4 := (DECIMAL5_2)LEFT.Dynamicstressloadz4;
																								SELF.Dynamicstressloadz5 := (DECIMAL5_2)LEFT.Dynamicstressloadz5;
																								SELF.Dynamicstressloadz6 := (DECIMAL5_2)LEFT.Dynamicstressloadz6;
																								SELF.totalloading := (DECIMAL5_2)LEFT.totalloading;
																								SELF.Maxspeed := (DECIMAL5_2)LEFT.Maxspeed;
																								SELF.Distancez6 := (DECIMAL5_2)LEFT.Distancez6;
																								SELF.Distancez6R := (DECIMAL5_2)LEFT.Distancez6R;
																								SELF.HSRpermin := (DECIMAL5_2)LEFT.HSRpermin;
																								SELF.HSRperminR := (DECIMAL5_2)LEFT.HSRperminR;
																								SELF.metabolicdis := (DECIMAL10_5)LEFT.metabolicdis;
																								SELF.explosivedis := (DECIMAL10_5)LEFT.explosivedis;
																								SELF.Accelerationimp := (DECIMAL5_2)LEFT.Accelerationimp;
																								SELF.Accelerationsdisz1 := (DECIMAL5_2)LEFT.Accelerationsdisz1;
																								SELF.Accelerationsdisz2 := (DECIMAL5_2)LEFT.Accelerationsdisz2;
																								SELF.Accelerationsdisz3 := (DECIMAL5_2)LEFT.Accelerationsdisz3;
																								SELF.Accelerationsdisz4 := (DECIMAL5_2)LEFT.Accelerationsdisz4;
																								SELF.Accelerationsdisz5 := (DECIMAL5_2)LEFT.Accelerationsdisz5;
																								SELF.Accelerationsdisz6 := (DECIMAL5_2)LEFT.Accelerationsdisz6;
																								SELF.Decelerationsdisz1 := (DECIMAL5_2)LEFT.Decelerationsdisz1;
																								SELF.Decelerationsdisz2 := (DECIMAL5_2)LEFT.Decelerationsdisz2;
																								SELF.Decelerationsdisz3 := (DECIMAL5_2)LEFT.Decelerationsdisz3;
																								SELF.Decelerationsdisz4 := (DECIMAL5_2)LEFT.Decelerationsdisz4;
																								SELF.Decelerationsdisz5 := (DECIMAL5_2)LEFT.Decelerationsdisz5;
																								SELF.Decelerationsdisz6 := (DECIMAL5_2)LEFT.Decelerationsdisz6));
END;