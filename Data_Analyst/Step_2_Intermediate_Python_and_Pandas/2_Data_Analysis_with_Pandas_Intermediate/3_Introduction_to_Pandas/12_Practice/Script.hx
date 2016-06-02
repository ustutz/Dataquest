package;

import pandas.Pandas;
import python.Syntax;

class Script {
	
	static function main() {
		
		var food_info = Pandas.read_csv( "../food_info.csv" );
		
		var columns:Array<String> = food_info.columns.tolist();
		
		var gram_columns = new Array<String>();
		for ( column in columns ) {
			if ( column.indexOf( "(g)" ) != -1 ) {
				gram_columns.push( column );
			}
		}
		
		var gram_df = Syntax.pythonCode( 'food_info[gram_columns]' );
		
		trace( gram_df.head() );
	}
}
