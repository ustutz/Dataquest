package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
/*		var vector = NumPy.array([5, 10, 15, 20]);
		var equal_to_ten_and_five = Syntax.pythonCode( '( vector == 10 ) & ( vector == 5 )' );
		var equal_to_ten_or_five = Syntax.pythonCode( '( vector == 10 ) | ( vector == 5 )' );
		
		trace( equal_to_ten_and_five );
		trace( equal_to_ten_or_five );
*/		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var is_algeria_and_1986 = Syntax.pythonCode( '( world_alcohol[:,0] == "1986" ) & ( world_alcohol[:,2] == "Algeria" )' );
		var rows_with_algeria_and_1986 = Syntax.pythonCode( 'world_alcohol[is_algeria_and_1986,:]' );
		
		trace( rows_with_algeria_and_1986 );
	}

}
