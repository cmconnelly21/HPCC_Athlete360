﻿EXPORT WBBgps_stg := RECORD
		STRING30 Name;
		STRING30 Period;
		UNSIGNED3 Periodnum;
		UNSIGNED4 Date;
		STRING Position;
		UNSIGNED4 Starttime;
		UNSIGNED4 Endtime;
		UNSIGNED4 Totaltime;
		DECIMAL5_2 PlayerLoad;
		DECIMAL5_2 PlayerLoadpermin;
		DECIMAL5_2 TRIMP;
		DECIMAL5_2 TRIMPpermin;
		UNSIGNED2 MaxHR;
		UNSIGNED3 HRexertion;
		DECIMAL5_2 Exertionindex;
		UNSIGNED4 HRover85;
		UNSIGNED4 HRover92;
		UNSIGNED2 MaxAccel;
		UNSIGNED2 MaxDecel;
		UNSIGNED2 MaxVelocity;
		UNSIGNED2 AccelDensity;
		DECIMAL5_2 AccelDensityIndex;
		UNSIGNED2 IMATotal;
		UNSIGNED2 IMACount;
		UNSIGNED2 IMACodLmax;
		UNSIGNED2 IMACodRmax;
		UNSIGNED2 JumpsTotal;
		DECIMAL5_2 Jumpspermin;
		UNSIGNED3 Athleteid;
		string19 wuid := workunit;

	END;
