package;
import python.Syntax;

import pandas.Pandas;

class Script {
	
	static function main() {
		
		var housing_2013 = Pandas.read_csv( "../Hud_2013.csv" );
		
		var columns = housing_2013.columns;
		var num_columns = untyped len( columns );
		trace( num_columns );
	}
}
