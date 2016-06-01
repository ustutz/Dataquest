package;

import pandas.Pandas;
import python.Syntax;

class Script {
	
	static function main() {
		
		var food_info = Pandas.read_csv( "../food_info.csv" );
		
		// Series object representing the row at index 0.
		//trace( Syntax.pythonCode( 'food_info.loc[0]' ));
		
		// Series object representing the seventh row.
		//trace( Syntax.pythonCode( 'food_info.loc[6] ' ));

		// Will throw an error: "KeyError: 'the label [9000] is not in the [index]'"
		//trace( Syntax.pythonCode( 'food_info.loc[9000] ' ));

		var hundredth_row = Syntax.pythonCode( 'food_info.loc[99]' );
		
		trace( hundredth_row );
		
	}
}
