package;
import sys.io.File;

class Script {

	static function main() {
		
		var a = File.read( "test.txt", false );
		trace( a );
		
		var f = File.read( "crime_rates.csv", false );
		trace( f );
	}
	
}