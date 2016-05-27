package;
import sys.io.File;

class Script {

	static function main() {
		
		var story_string = File.getContent( "story.txt" );
		
		story_string = StringTools.replace( story_string, ".", "" );
		story_string = StringTools.replace( story_string, ",", "" );
		story_string = StringTools.replace( story_string, "'", "" );
		story_string = StringTools.replace( story_string, ";", "" );
		story_string = StringTools.replace( story_string, "\n", "" );
		
		trace( story_string );
	}
	
}