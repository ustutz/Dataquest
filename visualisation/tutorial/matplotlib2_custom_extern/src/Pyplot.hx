package;

/**
 * ...
 * @author Urs Stutz
 * 
 * Custom pyplot Extern with limited functionality to get the example working
 */
@:pythonImport( 'matplotlib.pyplot' ) extern class Pyplot {

	static public function plot( x:Dynamic, ?y:Dynamic ):Dynamic;
	static public function ylabel( s:String ):Void;
	static public function show():Dynamic;
}