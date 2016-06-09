package;
import python.Dict;
import python.Syntax;
import python.lib.Json;

class Script {

	static function main() {
		
		// Make a list of fast food chains.
		var best_food_chains = ["Taco Bell", "Shake Shack", "Chipotle"];
		trace( untyped type( best_food_chains ));

		// Use json.dumps to convert best_food_chains to a string.
		var best_food_chains_string = Json.dumps( best_food_chains );
		trace( untyped type( best_food_chains_string ));

		// Convert best_food_chains_string back into a list
		trace( untyped type( Json.loads( best_food_chains_string )));

		// Make a dictionary
		var fast_food_franchise = new Dict<String, Int>();
		
		fast_food_franchise.set( "Subway", 24722 );
		fast_food_franchise.set( "McDonalds", 14098 );
		fast_food_franchise.set( "Starbucks", 10821 );
		fast_food_franchise.set( "Pizza Hut", 7600 );

		// We can also dump a dictionary to a string and load it.
		var fast_food_franchise_string = Json.dumps( fast_food_franchise ); // not working: fast_food_franchise is not serializable
		trace( untyped type( fast_food_franchise_string ));
		
	
	}
}