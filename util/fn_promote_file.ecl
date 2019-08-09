﻿EXPORT fn_promote_file(string prefix, String filename) := FUNCTION

    import Athlete360,STD;

    backup := prefix + 'backup::' + filename;
		
		athleteName := STD.STR.FINDREPLACE(regexfind('(\\-[A-Z]* [A-Z]*\\-)' , filename,1), '-', '');
		
		teamName := IF(athletename = '', '', Athlete360.files_stg.Athleteinfo_stgfile(name = trim(athleteName, LEFT, RIGHT))[1].team);
		
		
		super := prefix + IF(teamName ='' , filename, IF(STD.str.Tolowercase(teamname) = 'wsoc', 'ws_rawgps', 'ms_rawgps'));

    sub := prefix + filename + '_' + workunit;

    RETURN  STD.File.PromoteSuperFileList(
            [super, backup],
            sub,
            true
    );
END;