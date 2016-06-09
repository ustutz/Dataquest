package;
import haxe.Json;

class Script {

	static function main() {
		
		// Make a list of fast food chains.
		var best_food_chains = ["Taco Bell", "Shake Shack", "Chipotle"];
		trace( untyped type( best_food_chains ));

		// Use json.dumps to convert best_food_chains to a string.
		var best_food_chains_string = Json.stringify( best_food_chains );
		trace( untyped type( best_food_chains_string ));

		// Convert best_food_chains_string back into a list
		trace( untyped type( Json.parse( best_food_chains_string )));

		// Make a dictionary
		var fast_food_franchise = [
			"Subway"=> 24722,
			"McDonalds"=> 14098,
			"Starbucks"=> 10821,
			"Pizza Hut"=> 7600
		];

		// We can also dump a dictionary to a string and load it.
		var fast_food_franchise_string = Json.stringify( fast_food_franchise );
		trace( untyped type( fast_food_franchise_string ));
		
		var fast_food_franchise_2 = Json.parse( fast_food_franchise_string );
		trace( fast_food_franchise_2 );
	}
}