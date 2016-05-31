package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static function main() {
		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		
		var canada_1986_filter = Syntax.pythonCode( '(world_alcohol[:,0] == "1986") & (world_alcohol[:,2] == "Canada")' );
		
		var canada_1986 = Syntax.pythonCode( 'world_alcohol[canada_1986_filter,:]' );
		
		var is_value_empty = Syntax.pythonCode( 'canada_1986[:,4] == ""' );
		Syntax.pythonCode( 'canada_1986[is_value_empty,4] = "0"' );
		
		var canada_alcohol:NumPy = Syntax.pythonCode( 'canada_1986[:, 4]' );
		canada_alcohol = canada_alcohol.astype('float');
		
		var total_canadian_drinking = canada_alcohol.sum();
		
		trace( total_canadian_drinking );
	}

}
