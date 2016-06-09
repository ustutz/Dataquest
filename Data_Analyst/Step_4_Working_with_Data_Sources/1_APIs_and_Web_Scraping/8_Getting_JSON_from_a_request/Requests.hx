package;

/**
 * ...
 * @author Urs Stutz
 */
@:pythonImport( 'requests' ) extern class Requests {

	static public function get( url:String, ?params:Dynamic ):Response;
	
	public var status_code:Int;
	public var content:Dynamic;
}