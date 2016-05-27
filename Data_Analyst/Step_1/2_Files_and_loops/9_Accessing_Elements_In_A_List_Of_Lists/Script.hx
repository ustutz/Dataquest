package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var five_elements = get_five_elements();
		
		var cities_list = [];
		
		cities_list.push( five_elements[0][0] );
		cities_list.push( five_elements[1][0] );
		cities_list.push( five_elements[2][0] );
		cities_list.push( five_elements[3][0] );
		cities_list.push( five_elements[4][0] );
		
		trace( cities_list );
	}
	
	
	
	// Vorbereitungsfunktion um five_elements zu bekommen
	
	static function get_five_elements():Array<Array<String>> {
		
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
		
		return final_data.slice( 0, 5 );
	}
}