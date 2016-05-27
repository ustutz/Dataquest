package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var planet_numbers = ["mercury" => 1, "venus" => 2, "earth" => 3, "mars" => 4];
		
		var jupiter_found = planet_numbers.exists( "jupiter" );
		var earth_found = planet_numbers.exists( "earth" );
		
		trace( jupiter_found );
		trace( earth_found );
	}

}