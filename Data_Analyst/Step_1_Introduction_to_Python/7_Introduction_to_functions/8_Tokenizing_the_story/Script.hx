package;
import sys.io.File;

class Script {

	static function main() {
		
		var story_string = File.getContent( "story.txt" );
		var clean_chars = [",", ".", "'", ";", "\n"];
		
		var tokenized_story = tokenize( story_string, clean_chars );
		
		trace( tokenized_story.slice( 0, 10 ));
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
}