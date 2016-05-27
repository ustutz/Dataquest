package;

import python.Lib;

class Script {
	
	static function main() {
		
		var animals = [ 7 => "raven", 8 => "goose", 9 => "duck" ];
		var times  = [ "morning" => 9, "afternoon" => 14,  "evening" => 19, "night" => 23 ];
		
		trace( animals );
		trace( times );
	}

}