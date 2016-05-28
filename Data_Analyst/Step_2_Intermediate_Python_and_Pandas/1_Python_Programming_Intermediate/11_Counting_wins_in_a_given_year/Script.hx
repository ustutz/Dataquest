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
		
		var browns_2010_wins = nfl_wins( "2010", "Cleveland Browns" );
		var eagles_2011_wins = nfl_wins( "2011", "Philadelphia Eagles" );
		
		trace( "Cleveland Browns 2010 " + browns_2010_wins );
		trace( "Philadelphia Eagles 2011 " + eagles_2011_wins );
	}

	static function nfl_wins( year:String, team_name:String ):Int {
		
		var counter = 0;
		for ( row in csv ) {
			if (( row[0] == year )&&( row[2] == team_name )) {
				counter++;
			}
		}
		return counter;
	}
}