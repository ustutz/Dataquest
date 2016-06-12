package;
import python.Syntax;
import python.lib.Json;

class Script {

	static function main() {
		
		// Make a get request to get the latest position of the international space station from the opennotify api.
		var response = Requests.get("http://api.open-notify.org/astros.json");
		
		var response_object = response.json();
		var in_space_count = untyped response_object["number"];
		
		trace( in_space_count );
	}
	
}