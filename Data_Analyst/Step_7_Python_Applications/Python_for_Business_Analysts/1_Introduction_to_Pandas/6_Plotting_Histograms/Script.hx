package;
import python.Syntax;

import pandas.Pandas;
import matplotlib.pyplot.Pyplot;
import seaborn.Seaborn;

class Script {
	
	static function main() {
		
		Seaborn.set_style( "dark" );
		
		var housing_2013 = Pandas.read_csv( "../Hud_2013.csv" );
		
		var cols = Syntax.pythonCode( "['AGE1', 'FMR', 'TOTSAL']" );
		
		var filtered_housing_2013 = Syntax.pythonCode( 'housing_2013[cols]' );
		
		// Histogram of just the FMR, or fair market rate, column, using 20 bins
		filtered_housing_2013.hist( Syntax.pythonCode( "column='FMR', bins=20" ));
		
		Pyplot.show();
		
	}
}
