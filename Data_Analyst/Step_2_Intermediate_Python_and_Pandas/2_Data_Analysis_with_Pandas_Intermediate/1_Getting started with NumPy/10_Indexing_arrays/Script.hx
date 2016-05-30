package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
/*		var matrix = NumPy.array(	[
									[5, 10, 15], 
									[20, 25, 30]
									]);
		
		trace( Syntax.pythonCode( 'matrix[1, 2]' ));							
*/									
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var uruguay_other_1986 = Syntax.pythonCode( 'world_alcohol[1,4]' );
		var third_country = Syntax.pythonCode( 'world_alcohol[2,2]' );

		trace( uruguay_other_1986 );
		trace( third_country );
	}

}
