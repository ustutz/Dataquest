package;
import python.Syntax;

import pandas.Pandas;

class Script {
	
	static function main() {
		
		var housing_2013 = Pandas.read_csv( "../Hud_2013.csv" );
		
		var cols = Syntax.pythonCode( "['AGE1', 'FMR', 'TOTSAL']" );
		
		var filtered_housing_2013 = Syntax.pythonCode( 'housing_2013[cols]' );
		var evaluated_row_numbers = Syntax.pythonCode("filtered_housing_2013['AGE1'] > 0" );
		
		trace( evaluated_row_numbers );
	}
}
