﻿EXPORT MSOCnordbord := RECORD
		STRING Name;
		STRING Date;
		STRING Time;
		STRING Test;
		STRING Reps_L;
		STRING Reps_R;
		STRING MAX_FORCE_L;
		STRING MAX_FORCE_R;
		STRING MAX_IMBALANCE;
		STRING MAX_TORQUE_L;
		STRING MAX_TORQUE_R;
		STRING AVG_FORCE_L;
		STRING AVG_FORCE_R;
		STRING AVG_IMBALANCE;
		STRING AVG_TORQUE_L;
		STRING AVG_TORQUE_R;
		string19 wuid := workunit;
	END;