package;

import format.csv.Data.Record;
import format.csv.Reader;
import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var f = File.getContent( "world_alcohol.csv" );
		var world_alcohol = Reader.parseCsv( f );
		
		var years = new Array<Int>();
		for ( row in world_alcohol ) {
			years.push( Std.parseInt( row[0] ));
		}
		
		years = years.slice( 1 );
		
		var total = 0;
		for ( year in years ) {
			total += year;
		}
		
		var avg_year = total / years.length;
		
		trace( avg_year );
	}

}

/*
data = f.read()
data1 = data.replace( '\n', '**')

print( data1[25000:30000] )
*/