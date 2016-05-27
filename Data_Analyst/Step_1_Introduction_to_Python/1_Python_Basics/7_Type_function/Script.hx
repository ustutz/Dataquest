package;

class Script {

	static function main() {
		
		var a = Type.typeof( 5 );
		// The type is assigned to a. When you print the type, it is abbreviated to `int`
		trace( a );
		var c = Type.typeof( 10 );
		trace( c );
	}
	
}