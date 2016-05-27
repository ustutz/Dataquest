package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var data = File.getContent( "dq_unisex_names.csv" );
		data = StringTools.replace( data, '\r', '' );
		var data_list = data.split( '\n' );
		
		var string_data = [];
		for ( row in data_list ) {
			var comma_list = row.split( ',' );
			string_data.push( comma_list );
		}
		
		trace( string_data.slice( 0, 5 ));
	}
	
}