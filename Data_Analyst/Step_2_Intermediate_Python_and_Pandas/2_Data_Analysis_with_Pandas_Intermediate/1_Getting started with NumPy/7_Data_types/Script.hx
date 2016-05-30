package;
using PyHelpers;

class Script {
	
	static function main() {
		
		//var numbers = NumPy.array([1, 2, 3, 4]);
		//trace( numbers.dtype );
		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", delimiter => ',' );
		var world_alcohol_dtype = world_alcohol.dtype;
		
		trace( world_alcohol_dtype );
		
	}

}
