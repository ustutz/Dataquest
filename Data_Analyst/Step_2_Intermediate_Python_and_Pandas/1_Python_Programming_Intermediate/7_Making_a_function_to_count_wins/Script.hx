package;

import format.csv.Data.Record;
import format.csv.Reader;
import python.Lib;
import sys.io.File;

class Script {
	
	static private var csv:Array<Record>;
	
	static function main() {
		
		var f = File.getContent( "nfl.csv" );
		csv = Reader.parseCsv( f );
		
		var cowboys_wins = nfl_wins( "Dallas Cowboys" );
		var falcons_wins = nfl_wins( "Atlanta Falcons" );
		
		trace( "Dallas Cowboys " + cowboys_wins );
		trace( "Atlanta Falcons " + falcons_wins );
	}

	static function nfl_wins( team_name:String ):Int {
		
		var counter = 0;
		for ( row in csv ) {
			if ( row[2] == team_name ) {
				counter++;
			}
		}
		return counter;
	}
}