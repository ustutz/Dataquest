package;

/**
 * ...
 * @author Urs Stutz
 */
@:pythonImport( 'numpy' )
extern class NumPy {

	public static function array( list:Array<Dynamic> ):Array<Dynamic>;
	
	//numpy.genfromtxt(fname, dtype=<type 'float'>, comments='#', delimiter=None, skip_header=0, skip_footer=0, converters=None, missing_values=None, filling_values=None, usecols=None, names=None, excludelist=None, deletechars=None, replace_space='_', autostrip=False, case_sensitive=True, defaultfmt='f%i', unpack=None, usemask=False, loose=True, invalid_raise=True, max_rows=None)
	
	public static function genfromtxt( fname:String, dtype:Dynamic, comments:String = '#', delimiter:String = 'None', skip_header:Int = 0, skip_footer:Int = 0, converters:String = 'None', missing_values:String = 'None', filling_values:String = 'None', usecols:String = 'None', names:String = 'None', excludelist:String = 'None', deletechars:String = 'None', replace_space:String = '_', autostrip:Bool = false, case_sensitive:Bool = true, defaultfmt:String = 'f%i', unpack:String = 'None', usemask:Bool = false, loose:Bool = true, invalid_raise:Bool = true, max_rows:String = 'None'):NumPy;
}