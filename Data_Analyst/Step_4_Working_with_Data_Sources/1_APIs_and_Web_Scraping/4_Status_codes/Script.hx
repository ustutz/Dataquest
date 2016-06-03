package;

class Script {

	static function main() {
		
		// Make a get request to get the latest position of the international space station from the opennotify api.
		var response = Requests.get("http://api.open-notify.org/iss-pass");
		
		var status_code = response.status_code;
		
		trace( status_code );
	}
	
}