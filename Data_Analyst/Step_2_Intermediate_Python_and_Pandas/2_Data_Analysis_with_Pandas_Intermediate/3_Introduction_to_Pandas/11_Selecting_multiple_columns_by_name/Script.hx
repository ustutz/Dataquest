package;

import pandas.Pandas;
import python.Syntax;

class Script {
	
	static function main() {
		
		var food_info = Pandas.read_csv( "../food_info.csv" );

		//var columns = ["Zinc_(mg)", "Copper_(mg)"];
		//var zinc_copper = Syntax.pythonCode( 'food_info[columns]' );

		// Skipping the assignment.
		//var zinc_copper = Syntax.pythonCode( 'food_info[["Zinc_(mg)", "Copper_(mg)"]]' );
		
		var selenium_thiamin = Syntax.pythonCode( 'food_info[["Selenium_(µg)", "Thiamin_(mg)"]]' );
		
		trace( selenium_thiamin );
	}
}
