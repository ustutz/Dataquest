package;

/**
 * ...
 * @author Urs Stutz
 */
@:pythonImport( 'csv' )
extern class CSV {

	public static function reader( iterable:Dynamic, ?dialect:String ):Dynamic;
	
}