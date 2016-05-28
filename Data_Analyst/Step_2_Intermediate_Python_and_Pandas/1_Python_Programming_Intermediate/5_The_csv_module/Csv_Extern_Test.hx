package;

import haxe.extern.Rest;

/**
 * ...
 * @author Urs Stutz
 */
@:pythonImport( 'csv' )
extern class Csv {

	public static function reader( iterable:Dynamic, args:Rest<String> ):Csv;
	
}