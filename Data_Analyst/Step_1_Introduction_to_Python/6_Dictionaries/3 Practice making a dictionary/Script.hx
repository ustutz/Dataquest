package;

import python.Dict;

class Script {
	
	static function main() {
		
		var superhero_ranks = new Dict<String, Int>();
		
		superhero_ranks.set( "Aquaman", 1 );
		superhero_ranks.set( "Superman", 2 );
		
		trace( superhero_ranks );
	}

}