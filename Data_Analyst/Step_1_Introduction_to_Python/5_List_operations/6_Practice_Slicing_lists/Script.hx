package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var slice_me = [7, 6, 4, 5, 6];
		
		var slice1 = slice_me.slice( 2, 4 );
		var slice2 = slice_me.slice( 1, 2 );
		var slice3 = slice_me.slice( 3, 5 );
		
		trace( slice1 );
		trace( slice2 );
		trace( slice3 );
	}

}