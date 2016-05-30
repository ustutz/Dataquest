package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
/*		var vector = NumPy.array([5, 10, 15, 20]);
		var equal_to_ten = Syntax.pythonCode( 'vector == 10' );
		
		trace( untyped vector[equal_to_ten] );
		
		var matrix = NumPy.array([
							[5, 10, 15], 
							[20, 25, 30],
							[35, 40, 45]
						 ]);
		
		var second_column_25 = Syntax.pythonCode( 'matrix[:,1] == 25' );
		trace( Syntax.pythonCode( 'matrix[second_column_25,:]' ));
*/
		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var country_is_algeria = Syntax.pythonCode( 'world_alcohol[:,2] == "Algeria"' );
		var country_algeria = Syntax.pythonCode( 'world_alcohol[country_is_algeria,:]' );
		
		trace( country_algeria );
	}

}
