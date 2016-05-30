package;

import format.csv.Reader;
import python.Lib;
import sys.io.File;

class Script {
	
	// using haxe csv library
/*	static function main() {
		
		var f = File.getContent( "nfl.csv" );
		var nfl = Reader.parseCsv( f );
		
		trace ( nfl.slice( 0, 10 ) );
	}
*/
	// using python csv library
	static function main() {
		
		var f = untyped open( "nfl.csv", "r" );
		var csvreader = Csv.reader(f);
		
		var nfl:Array<Dynamic> = untyped list( csvreader );
		trace( nfl.slice( 0, 10 ));
		
	}
	
	
}