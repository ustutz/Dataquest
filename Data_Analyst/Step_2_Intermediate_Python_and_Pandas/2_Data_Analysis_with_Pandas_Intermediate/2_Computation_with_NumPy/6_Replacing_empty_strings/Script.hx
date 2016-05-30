package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var is_value_empty = Syntax.pythonCode( 'world_alcohol[:,4] == ""' );
		Syntax.pythonCode( 'world_alcohol[is_value_empty,4] = "0"' );
		
		trace( world_alcohol );
	}

}
