package;
import sys.io.File;

class Script {

	static function main() {
		
		// We can split a string into a list.
		var sample = "john,plastic,joe";
		var split_list = sample.split( "," );
		trace( split_list );

		// Here's another example.
		var string_two = "How much wood\ncan a woodchuck chuck\nif a woodchuck\ncan chuck wood?";
		var split_string_two = string_two.split( '\n' );
		trace( split_string_two );

		// Code from previous cells
		var data = File.getContent( "crime_rates.csv" );
		var rows = data.split( '\n' );
		
		trace( rows.slice( 0, 6 ));
		
	}
	
}