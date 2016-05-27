package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var data = File.getContent( "dq_unisex_names.csv" );
		data = StringTools.replace( data, '\r', '' );
		var data_list = data.split( '\n' );
		
		var numerical_data = [];
		for ( row in data_list ) {
			
			var comma_list = row.split( ',' );
			var number_of_people = Std.parseFloat( comma_list[1] );
			
			if( number_of_people >= 1000 ) {
				var numerical_list:Array<Dynamic> = [comma_list[0], number_of_people];
				numerical_data.push( numerical_list );
			}
			
		}
		
		var thousand_or_greater = new Array<String>();
		for ( entry in numerical_data ) {
			if ( entry[1] >= 1000 ) {
				thousand_or_greater.push( entry[0] );
			}
		}
		
		trace( thousand_or_greater.slice( 0, 10 ));
	}
	
}