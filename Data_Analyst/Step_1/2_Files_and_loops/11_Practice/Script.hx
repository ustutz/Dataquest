package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var data = File.getContent( "crime_rates.csv" );
		data = StringTools.replace( data, '\r', '' );
		var rows = data.split( '\n' );
		
		var int_crime_rates = [];
		// oder noch besser
		// var int_crime_rates = new Array<Int>();
		
		for ( row in rows ) {
			
			var list = row.split( ',' );
			var crime_rate = Std.parseInt( list[1] );
			int_crime_rates.push( crime_rate );
		}
		
		trace( int_crime_rates );
		
	}
	
}