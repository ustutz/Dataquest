package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var data = File.getContent( "dq_unisex_names.csv" );
		data = StringTools.replace( data, '\r', '' );
		var data_list = data.split( '\n' );
		
		var first_five = data_list.slice( 0, 5 );
		
		trace( first_five );
	}
	
}