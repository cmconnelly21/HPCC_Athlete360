﻿EXPORT MSOCtrainingload_stg := RECORD
		UNSIGNED4 Date;
		UNSIGNED3 Time;
		STRING Name;
		DECIMAL5_2 Rating;
		UNSIGNED1 Duration;
		UNSIGNED1 Trainingload;
		STRING Category;
		STRING Team;
		string19 wuid := workunit;
		unsigned3 athleteid := 0;
	END;