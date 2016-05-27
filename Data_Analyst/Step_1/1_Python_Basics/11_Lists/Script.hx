package;

class Script {

	static function main() {
		
		var l = [];

		// Print the type of `l` to confirm it's a list.
		trace( Type.typeof( l ));
		l.push( "January" );
		l.push( "February" );
		l.push( "March" );
		l.push( "April" );
		
		trace(l);

	}
	
}