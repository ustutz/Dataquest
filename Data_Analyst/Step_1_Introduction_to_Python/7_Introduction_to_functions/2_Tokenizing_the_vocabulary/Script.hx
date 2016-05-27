package;
import sys.io.File;

class Script {

	static function main() {
		
		var vocabulary = File.getContent( "dictionary.txt" );
		
		var tokenized_vocabulary = vocabulary.split( ' ' );
		
		trace( tokenized_vocabulary.slice( 0, 5 ));
	}
	
}