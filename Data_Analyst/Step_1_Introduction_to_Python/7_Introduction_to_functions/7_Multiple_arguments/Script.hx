package;
import sys.io.File;

class Script {

	static function main() {
		
		var story_string = File.getContent( "story.txt" );
		var clean_chars = [",", ".", "'", ";", "\n"];
		var cleaned_story = clean_text( story_string, clean_chars );
		
		trace( cleaned_story );
	}
	
	static function clean_text( text_string:String, special_characters:Array<String> ):String {
		
		for ( special_character in special_characters ) {
			text_string = StringTools.replace( text_string, special_character, "" );
		}
		text_string = text_string.toLowerCase();
		return text_string;
	}
}