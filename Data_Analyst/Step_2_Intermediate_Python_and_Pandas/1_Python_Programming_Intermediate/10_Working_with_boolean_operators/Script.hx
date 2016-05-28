package;

import python.Lib;

class Script {
	
	static function main() {
		
		var a = 5;
		var b = 10;
		
		var result1 = a == 5;
		var result2 = ( a < 5 )||( b > a );
		var result3 = ( a < 5 )&&( b > a );
		var result4 = ( a == 5 )||( b == 5 );
		var result5 = ( a > b )||( a == 10 );
		
		trace( "result1 " + result1 );
		trace( "result2 " + result2 );
		trace( "result3 " + result3 );
		trace( "result4 " + result4 );
		trace( "result5 " + result5 );
	}

}