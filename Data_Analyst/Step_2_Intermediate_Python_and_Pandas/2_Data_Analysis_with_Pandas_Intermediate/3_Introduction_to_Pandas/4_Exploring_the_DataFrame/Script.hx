package;

import pandas.Pandas;

class Script {
	
	static function main() {
		
		var food_info = Pandas.read_csv( "../food_info.csv" );
		//var first_rows = food_info.head();
		//var column_names = food_info.columns;
		//var dimensions = food_info.shape;
		
		var first_twenty = food_info.head( 20 );
		
	}
}
