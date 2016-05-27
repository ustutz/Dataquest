package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var data = File.getContent( "crime_rates.csv" );
		
		data = StringTools.replace( data, '\r', '' );
		
		var rows = data.split( '\n' );
		
		var final_data = [];
		// oder für eine genaue Definition von final_data
		// var final_data = new Array<Array<String>>();
		
		for ( row in rows ) {
			var elements = row.split( ',' );
			final_data.push( elements );
		}
		
		trace( final_data.splice( 0, 5 ));
	}
	
}