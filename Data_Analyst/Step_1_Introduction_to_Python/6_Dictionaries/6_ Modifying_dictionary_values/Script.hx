package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var students  = [ "Tom" => 60, "Jim" => 70, "Ann" => 85 ];
		
		students.set( "Tom", 80 );
		students.set( "Jim", students.get( "Jim" ) + 5 );
		
		trace( students );
		
	}

}