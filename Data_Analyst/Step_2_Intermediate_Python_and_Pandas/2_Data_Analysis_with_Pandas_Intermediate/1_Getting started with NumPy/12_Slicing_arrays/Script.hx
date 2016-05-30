package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
/*		var matrix = NumPy.array([
							[5, 10, 15], 
							[20, 25, 30],
							[35, 40, 45]
						 ]);
		trace( Syntax.pythonCode( 'matrix[:,0:2]'));
		trace( Syntax.pythonCode( 'matrix[1:3,:]'));
		trace( Syntax.pythonCode( 'matrix[1:3,1]'));
*/
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var first_two_columns = Syntax.pythonCode( 'world_alcohol[:,0:2]' );
		var first_ten_years = Syntax.pythonCode( 'world_alcohol[0:10,0]' );
		var first_ten_rows = Syntax.pythonCode( 'world_alcohol[0:10,:]' );
		
		trace( first_two_columns );
		trace( first_ten_years );
		trace( first_ten_rows );
		
	}

}
