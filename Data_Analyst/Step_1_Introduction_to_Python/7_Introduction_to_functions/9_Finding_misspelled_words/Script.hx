package;
import sys.io.File;

class Script {

	static function main() {
		
		var tokenized_vocabulary = get_tokenized_vocabulary();
		
		var story_string = File.getContent( "story.txt" );
		var clean_chars = [",", ".", "'", ";", "\n", "\r"];
		
		var tokenized_story = tokenize( story_string, clean_chars );
		
		var misspelled_words = new Array<String>();
		
		for ( word in tokenized_story ) {
			
			var is_not_in_vocabulary = !find_in_array( word, tokenized_vocabulary );
			
			if ( is_not_in_vocabulary ) {
				misspelled_words.push( word );
			}
		}
		
		trace( misspelled_words );
	}
	
	static function tokenize( text_string:String, special_characters:Array<String> ):Array<String> {
		
		var cleaned_story = clean_text( text_string, special_characters );
		var story_tokens = cleaned_story.split( ' ' );
		
		return story_tokens;
	}
	
	static function clean_text( text_string:String, special_characters:Array<String> ):String {
		
		for ( special_character in special_characters ) {
			text_string = StringTools.replace( text_string, special_character, "" );
		}
		text_string = text_string.toLowerCase();
		return text_string;
	}
	
	static function get_tokenized_vocabulary():Array<String> {
		
		var vocabulary = File.getContent( "dictionary.txt" );
		var tokenized_vocabulary = vocabulary.split( ' ' );
		return tokenized_vocabulary;
	}
	
	// haxe doesn't have the 'in' Statement for finding values in arrays
	// but this little function does the same trick
	static function find_in_array( value:Dynamic, array:Array<Dynamic> ):Bool {
		
		for ( entry in array ) {
			if ( value == entry ) {
				return true;
				break;
			}
		}
		return false;
	}
	
}