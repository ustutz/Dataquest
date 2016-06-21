package;
import python.Syntax;

import pandas.Pandas;

class Script {
	
	static function main() {
		
		var housing_2013 = Pandas.read_csv( "../Hud_2013.csv" );
		
		var cols = ['AGE1', 'FMR', 'TOTSAL'];
		trace( cols );
		
		var filtered_housing_2013 = Syntax.pythonCode( 'housing_2013[cols]' );
		trace( filtered_housing_2013.head(5) );
	}
}
