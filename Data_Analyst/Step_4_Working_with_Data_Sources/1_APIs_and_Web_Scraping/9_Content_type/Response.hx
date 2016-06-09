package;
import python.Dict;
import python.lib.Json;

/**
 * ...
 * @author Urs Stutz
 */
@:pythonImport( 'response' ) extern class Response {

	public var headers:Dict<String, Dynamic>;
	public function json():Json;
	
}