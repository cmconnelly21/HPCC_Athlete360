﻿EXPORT WSOCgps_stg :=RECORD
		STRING50 Name;
		STRING50 Position;
		STRING50 Sessiontype;
		UNSIGNED1 Week;
		UNSIGNED4 Date;
		STRING Drillname;
		UNSIGNED4 Drillstarttime;
		DECIMAL5_2 Drilltotaltime;
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
		string19 wuid := workunit;
    UNSIGNED3 athleteid := 0;
END;