package;

/**
 * ...
 * @author Urs Stutz
 */
@:pythonImport( 'requests' ) extern class Requests {

	static public function get( url:String, ?params:Dynamic ):Requests;
	
	public var status_code:Int;
	public var content:Dynamic;
}