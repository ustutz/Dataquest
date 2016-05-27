package;
import sys.io.File;

class Script {

	static function main() {
		
		var vocabulary = File.getContent( "dictionary.txt" );
		trace( vocabulary );
	}
	
}