package;

import python.Dict;

class Script {
	
	static function main() {
		
		var pantry = ["apple", "orange", "grape", "apple", "orange", "apple", "tomato", "potato", "grape"];
		
		var pantry_counts = new Dict<String, Int>();
		
		for ( item in pantry ) {
			if ( pantry_counts.hasKey( item )) {
				pantry_counts.set( item, pantry_counts.get( item ) + 1 );
			} else {
				pantry_counts.set( item, 1 );
			}
		}
		
		trace( pantry_counts );
	}

}