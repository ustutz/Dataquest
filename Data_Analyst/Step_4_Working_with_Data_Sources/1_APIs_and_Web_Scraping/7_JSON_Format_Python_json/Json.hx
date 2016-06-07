package;

/**
 * ...
 * @author Urs Stutz
 */
@:pythonImport( 'json' ) extern class Json {

	public static function dumps( d:Dynamic ):String;
	public static function loads( s:String ):Dynamic;
	
}