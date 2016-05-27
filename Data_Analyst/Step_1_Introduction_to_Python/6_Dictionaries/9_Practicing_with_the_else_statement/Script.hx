package;

import python.Lib;

class Script {
	
	static function main() {
		
		var planet_names = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Neptune", "Uranus"];

		var short_names = new Array<String>();
		var long_names = new Array<String>();
		
		for ( planet_name in planet_names ) {
			if ( planet_name.length > 5 ) {
				long_names.push( planet_name );
			} else {
				short_names.push( planet_name );
			}
		}
		
		trace( short_names );
		trace( long_names );
	}

}