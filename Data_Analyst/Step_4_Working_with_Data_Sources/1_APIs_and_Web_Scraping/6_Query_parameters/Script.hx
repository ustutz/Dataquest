package;
using PyHelpers;

class Script {

	static function main() {
		
		// easy call with parameters as string
		//var response = Requests.get("http://api.open-notify.org/iss-pass.json?lat=37.78&lon=-122.41");
		
		// Set up the parameters we want to pass to the API.
		// This is the latitude and longitude of New York City.
		var parameters = ["lat" => 37.78, "lon" => -122.41];
		
		//trace( create_parameters(parameters));
		
		// Make a get request with the parameters.
		var response = Requests.get.call("http://api.open-notify.org/iss-pass.json", params=>create_parameters(parameters));

		// Print the content of the response (the data the server returned)
		trace(response.content);
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