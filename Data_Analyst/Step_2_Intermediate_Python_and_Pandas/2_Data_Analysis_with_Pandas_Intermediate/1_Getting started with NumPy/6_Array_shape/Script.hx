package;

class Script {
	
	static function main() {
		
		var vector = NumPy.array( [5, 10, 15, 20] );
		var matrix = NumPy.array( [[5, 10, 15], [20, 25, 30], [35, 40, 45]] );
		
		var vector_shape = vector.shape;
		var matrix_shape = matrix.shape;
		
		trace( vector_shape );
		trace( matrix_shape );
		
	}

}
