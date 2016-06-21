package;
import python.Syntax;

import pandas.Pandas;

class Script {
	
	static function main() {
		
		var housing_2013 = Pandas.read_csv( "../Hud_2013.csv" );
		
		var cols = Syntax.pythonCode( "['AGE1', 'FMR', 'TOTSAL']" );
		
		var filtered_housing_2013 = Syntax.pythonCode( 'housing_2013[cols]' );
		
		// Histogram of just the FMR, or fair market rate, column, using 20 bins
		filtered_housing_2013.hist( Syntax.pythonCode( "column='FMR', bins=20" ));
		
		trace( filtered_housing_2013.head(5) );
	}
}
