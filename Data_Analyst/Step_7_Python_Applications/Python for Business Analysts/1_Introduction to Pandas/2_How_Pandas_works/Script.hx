package;
import python.Syntax;

// We want to import the library, Pandas, into our environment
import pandas.Pandas;

class Script {
	
	static function main() {
		
		// read_csv() is the function (or feature) from pandas we want to use to load the file into memory
		// housing_2013 is the variable we will use to refer to the loaded dataset
		var housing_2013 = Pandas.read_csv( "../Hud_2013.csv" );
		
		// .head(num_of_rows) is a method that displays the first few (num_of_rows) rows, not counting column headers
		trace( housing_2013.head(5));
	}
}
