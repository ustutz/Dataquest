package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
/*		var vector = NumPy.array([5, 10, 15, 20]);
		var equal_to_ten_or_five = Syntax.pythonCode( '( vector == 10 ) | ( vector == 5 )' );
		
		untyped vector[equal_to_ten_or_five] = 50;
		
		trace( vector );
		
		var matrix = NumPy.array([
							[5, 10, 15], 
							[20, 25, 30],
							[35, 40, 45]
						 ]);
		
		var second_column_25 = Syntax.pythonCode( 'matrix[:,1] == 25' );
		Syntax.pythonCode( 'matrix[second_column_25, 1] = 10' );
		
		trace( matrix );
*/
		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var year_is_1986 = Syntax.pythonCode( 'world_alcohol[:,0] == "1986"' );
		Syntax.pythonCode( 'world_alcohol[year_is_1986,0] = "2014"' );
		
		var drink_is_wine = Syntax.pythonCode( 'world_alcohol[:,3] == "Wine"' );
		Syntax.pythonCode( 'world_alcohol[drink_is_wine,3] = "Grog"' );
		
		trace( world_alcohol );
	}

}
