package;
import python.Syntax;
import python.lib.Json;
using PyHelpers;

class Script {

	static function main() {
		
		var parameters = ["lat" => 37.78, "lon" => -122.41];
		
		// Make a get request to get the latest position of the international space station from the opennotify api.
		var response = Requests.get.call("http://api.open-notify.org/iss-pass.json", params => create_parameters(parameters));
		
		//trace( response.headers );
		
		var content_type = Syntax.pythonCode( 'response.headers["Content-Type"]' );
		
		trace( content_type );
	}
	
	static function create_parameters( input_parameters:Map<String, Dynamic> ):String {
		
		var output_parameters = "";
		for ( key in input_parameters.keys() ) {
			
			output_parameters += key + "=" + Std.string( input_parameters.get( key )) + "&";
		}
		
		output_parameters = output_parameters.substr( 0, output_parameters.length - 1 );
		
		return output_parameters;
	}
}