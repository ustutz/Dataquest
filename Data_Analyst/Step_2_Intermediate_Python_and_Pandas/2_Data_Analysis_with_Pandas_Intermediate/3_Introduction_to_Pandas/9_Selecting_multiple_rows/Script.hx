package;

import pandas.Pandas;
import python.Syntax;

class Script {
	
	static function main() {
		
		var food_info = Pandas.read_csv( "../food_info.csv" );
		
/*		// DataFrame containing the rows at index 3, 4, 5, and 6 returned.
		trace( "Rows 3, 4, 5, and 6" );
		trace( Syntax.pythonCode( 'food_info.loc[3:6]' ));
		
		//  DataFrame containing the rows at index 2, 5, and 10 returned. Either of the following work.
		// Method 1
		trace( "Rows 2, 5, and 10" );
		var two_five_ten = [2, 5, 10];
		trace( two_five_ten );
		trace( Syntax.pythonCode( 'food_info.loc[two_five_ten]' ));

		// Method 2
		trace( Syntax.pythonCode( 'food_info.loc[[2,5,10]]' ));
*/
		
		var dimensions = food_info.shape;
		var rows = dimensions[0];
		
		var last_rows = Syntax.pythonCode( 'food_info.loc[rows-5:rows-1]' );
		
		trace( last_rows );
		
	}
}
