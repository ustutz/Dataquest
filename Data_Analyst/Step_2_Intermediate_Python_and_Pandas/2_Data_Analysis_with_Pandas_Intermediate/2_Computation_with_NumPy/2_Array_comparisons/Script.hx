package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
/*		var vector = NumPy.array([5, 10, 15, 20]);
		trace( Syntax.pythonCode( 'vector == 10' ));
		
		var matrix = NumPy.array([
							[5, 10, 15], 
							[20, 25, 30],
							[35, 40, 45]
						 ]);
		trace( Syntax.pythonCode( 'matrix == 25'));
*/
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var third_column = Syntax.pythonCode( 'world_alcohol[:,2]' );
		var countries_canada = Syntax.pythonCode( 'third_column == "Canada"');
		
		var first_column = Syntax.pythonCode( 'world_alcohol[:,0]' );
		var years_1984 = Syntax.pythonCode( 'first_column == "1984"');
		
		trace( countries_canada );
		trace( years_1984 );
		
	}

}
