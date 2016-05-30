package;
using PyHelpers;

class Script  {
	
	
	static function main() {
		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", delimiter => ',' );
		trace( world_alcohol );
	}

}
