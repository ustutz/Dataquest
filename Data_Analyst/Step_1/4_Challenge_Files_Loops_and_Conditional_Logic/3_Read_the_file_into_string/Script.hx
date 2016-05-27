package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var data = File.getContent( "dq_unisex_names.csv" );
		
		trace( data );
		
	}
	
}