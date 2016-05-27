package;
import sys.io.File;

class Script {

	static function main() {
		
		var data = File.getContent( "crime_rates.csv" );
		trace( data );
	}
	
}