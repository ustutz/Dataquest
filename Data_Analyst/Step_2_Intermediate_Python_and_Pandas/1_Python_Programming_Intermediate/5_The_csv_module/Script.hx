package;

import format.csv.Reader;
import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var f = File.getContent( "nfl.csv" );
		var csv = Reader.parseCsv( f );
		
		trace ( csv );
	}

}