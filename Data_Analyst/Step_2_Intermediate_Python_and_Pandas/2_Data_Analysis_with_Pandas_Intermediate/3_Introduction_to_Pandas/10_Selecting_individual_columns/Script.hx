package;

import pandas.Pandas;
import python.Syntax;

class Script {
	
	static function main() {
		
		var food_info = Pandas.read_csv( "../food_info.csv" );

		// Series object representing the "NDB_No" column.
		//var ndb_col = Syntax.pythonCode( 'food_info["NDB_No"]' );

		// You can instead access a column by passing in a string variable.
		//var col_name = "NDB_No";
		//var ndb_col = Syntax.pythonCode( 'food_info[col_name]' );
		
		var saturated_fat = Syntax.pythonCode( 'food_info["FA_Sat_(g)"]' );
		var cholesterol = Syntax.pythonCode( 'food_info["Cholestrl_(mg)"]' );
		
		trace( saturated_fat[0] );
		trace( cholesterol[0] );
	}
}
