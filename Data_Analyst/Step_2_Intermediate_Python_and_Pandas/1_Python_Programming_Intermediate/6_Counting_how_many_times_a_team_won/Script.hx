package;

import format.csv.Reader;
import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var f = File.getContent( "nfl.csv" );
		
		var csv = Reader.parseCsv( f );
		
		var counter = 0;
		for ( row in csv ) {
			//trace( row[0], row[1], row[2], row[3] );
			if ( row[2] == "New England Patriots" ) {
				counter++;
			}
		}
		
		var patriots_wins = counter;
		
		trace( patriots_wins );
	}

}