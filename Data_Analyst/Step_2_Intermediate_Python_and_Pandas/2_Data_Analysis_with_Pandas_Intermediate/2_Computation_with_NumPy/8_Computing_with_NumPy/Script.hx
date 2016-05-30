package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
/*		var vector = NumPy.array([5, 10, 15, 20]);
		var sum = vector.sum();
		
		trace( sum );
		
		var matrix = NumPy.array([
                [5, 10, 15], 
                [20, 25, 30],
                [35, 40, 45]
             ]);
		var sum_of_rows = matrix.sum.call( axis=>1 );
		
		trace( sum_of_rows );
*/		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		var is_value_empty = Syntax.pythonCode( 'world_alcohol[:,4] == ""' );
		Syntax.pythonCode( 'world_alcohol[is_value_empty,4] = "0"' );
		
		var alcohol_consumption:NumPy = Syntax.pythonCode( 'world_alcohol[:,4]' );
		var alcohol_consumption = alcohol_consumption.astype('float');
		
		var total_alcohol = alcohol_consumption.sum();
		var average_alcohol = alcohol_consumption.mean();
		
		trace( total_alcohol );
		trace( average_alcohol );
	}

}
