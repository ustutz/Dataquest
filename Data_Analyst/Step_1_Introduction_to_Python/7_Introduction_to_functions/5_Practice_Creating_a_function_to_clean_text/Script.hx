package;
import sys.io.File;

class Script {

	static function main() {
		
		var story_string = File.getContent( "story.txt" );
		
		var cleaned_story = clean_text( story_string );
		
		trace( cleaned_story );
	}
	
	static function clean_text( text_string:String ):String {
		
		text_string = StringTools.replace( text_string, ".", "" );
		text_string = StringTools.replace( text_string, ",", "" );
		text_string = StringTools.replace( text_string, "'", "" );
		text_string = StringTools.replace( text_string, ";", "" );
		text_string = StringTools.replace( text_string, "\n", "" );
		return text_string;
	}
}