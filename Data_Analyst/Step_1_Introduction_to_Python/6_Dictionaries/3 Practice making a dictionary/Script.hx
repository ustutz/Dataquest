package;

import python.Lib;

class Script {
	
	static function main() {
		
		var superhero_ranks = new Map<String, Int>();
		
		superhero_ranks.set( "Aquaman", 1 );
		superhero_ranks.set( "Superman", 2 );
		
		trace( superhero_ranks );
	}

}