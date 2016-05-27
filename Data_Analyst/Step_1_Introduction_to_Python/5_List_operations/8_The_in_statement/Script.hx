package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var animals = ["cat", "dog", "rabbit", "horse", "giant_horrible_monster"];
		
		var cat_found = findInArray( "cat", animals );
		var space_monster_found = findInArray( "space_monster", animals );
		
		trace( cat_found );
		trace( space_monster_found );
	}

	// haxe doesn't have the 'in' Statement for finding values in arrays
	// but this little function does the same trick
	static function findInArray( value:Dynamic, array:Array<Dynamic> ):Bool {
		
		for ( entry in array ) {
			if ( value == entry ) {
				return true;
				break;
			}
		}
		return false;
	}
	
}