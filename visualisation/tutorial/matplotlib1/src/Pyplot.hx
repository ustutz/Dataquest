package;

/**
 * ...
 * @author Urs Stutz
 * 
 * Custom pyplot Extern with limited functionality to get the example working
 */
@:pythonImport( 'matplotlib.pyplot' ) extern class Pyplot {

	static public function plot( ?a:Dynamic, ?b:Dynamic):Dynamic;
	static public function show():Dynamic;
}