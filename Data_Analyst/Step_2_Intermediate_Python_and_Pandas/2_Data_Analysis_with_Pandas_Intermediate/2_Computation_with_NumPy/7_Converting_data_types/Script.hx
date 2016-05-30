package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
/*		var vector = NumPy.array(["1", "2", "3"]);
		vector = vector.astype('float');

		trace( vector );
*/		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		var is_value_empty = Syntax.pythonCode( 'world_alcohol[:,4] == ""' );
		Syntax.pythonCode( 'world_alcohol[is_value_empty,4] = "0"' );
		
		var alcohol_consumption:NumPy = Syntax.pythonCode( 'world_alcohol[:,4]' );
		var alcohol_consumption = alcohol_consumption.astype('float');
		
		trace( alcohol_consumption );
	}

}
