package;
import python.Syntax;

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
		var fast_food_franchise = [
			"Subway"=> 24722,
			"McDonalds"=> 14098,
			"Starbucks"=> 10821,
			"Pizza Hut"=> 7600
		];

		// We can also dump a dictionary to a string and load it.
		var fast_food_franchise_string = Json.dumps( fast_food_franchise ); // not working: fast_food_franchise is not serializable
		trace( untyped type( fast_food_franchise_string ));
		
	
	}
}