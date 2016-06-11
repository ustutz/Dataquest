package;
using PyHelpers;

class Script {
	
	static function main() {
		
		var world_alcohol = NumPy.genfromtxt.call("world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>",");
		var world_alcohol_dtype = world_alcohol.dtype;
		
		trace( untyped world_alcohol );
		trace( world_alcohol_dtype );
		
	}

}
