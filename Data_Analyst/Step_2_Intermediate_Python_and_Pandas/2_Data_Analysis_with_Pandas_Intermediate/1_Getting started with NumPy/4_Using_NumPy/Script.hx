package;

import format.csv.Data.Record;
import format.csv.Reader;
import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var world_alcohol = NumPy.genfromtxt( "world_alcohol.csv", null, '#', ',' );
		
		trace( world_alcohol );
	}

}
