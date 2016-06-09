package;
import python.Syntax;
import python.lib.Json;
using PyHelpers;

class Script {

	static function main() {
		
		var parameters = ["lat" => 37.78, "lon" => -122.41];
		
		// Make a get request to get the latest position of the international space station from the opennotify api.
		var response = Requests.get.call("http://api.open-notify.org/iss-pass.json", params => create_parameters(parameters));
		
		// Example is not working because the response from the api not like in the example. It is <Response [200]>
		
		// we can fake the response to get this example working
		var response_string = '{"response": [{"duration": 369, "risetime": 1441456672}, {"duration": 626, "risetime": 1441462284}, {"duration": 581, "risetime": 1441468104}, {"duration": 482, "risetime": 1441474000}, {"duration": 509, "risetime": 1441479853}], "message": "success", "request": {"longitude": -122.41, "altitude": 100, "latitude": 37.78, "datetime": 1441417753, "passes": 5}}';
		
		var data = Json.loads( response_string );
		
		var first_pass_duration = Syntax.pythonCode( "data['response'][0]['duration']" );
		
		trace( first_pass_duration );
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