package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
		//var matrix = NumPy.array([
							//[5, 10, 15], 
							//[20, 25, 30],
							//[35, 40, 45]
						 //]);
		//trace( Syntax.pythonCode( 'matrix[1:3,0:2]'));

		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var first_twenty_regions = Syntax.pythonCode( 'world_alcohol[0:20,1:3]' );
		
		trace( first_twenty_regions );
		
	}

}
