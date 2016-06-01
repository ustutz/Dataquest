package;

import pandas.Pandas;

class Script {
	
	static function main() {
		
		var food_info = Pandas.read_csv( "../food_info.csv" );
		var first_rows = food_info.head(3);
		
		trace( first_rows );
		
	}
}
