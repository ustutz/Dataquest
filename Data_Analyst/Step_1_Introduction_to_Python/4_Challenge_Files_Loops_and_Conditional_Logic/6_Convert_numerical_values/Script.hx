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
			
			var numerical_list:Array<Dynamic> = [comma_list[0], Std.parseFloat( comma_list[1] )];
			
			numerical_data.push( numerical_list );
		}
		
		trace( numerical_data.slice( 0, 5 ));
	}
	
}