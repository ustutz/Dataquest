package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var final_data = get_final_data();
		
		var cities_list = [];
		
		for ( row in final_data ) {
			cities_list.push( row[0] );
		}
		
		trace( cities_list );
	}
	
	
	
	// Vorbereitungsfunktion um final_data zu bekommen
	
	static function get_final_data():Array<Array<String>> {
		
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
		
		return final_data;
	}
}