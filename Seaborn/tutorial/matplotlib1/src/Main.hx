package;
using PyHelpers;

import python.Lib;
import python.Syntax;
import numpy.Numpy;
import matplotlib.pyplot.Pyplot;
import seaborn.Seaborn;

/**
 * ...
 * @author Urs Stutz
 */
class Main {
	
	static function main() {
		
		var linspace = Numpy.linspace.call( -Numpy.pi, Numpy.pi, 256, endpoint => true );
		var cos = Numpy.cos( linspace );
		var sin = Numpy.sin( linspace );
		
		Pyplot.plot( linspace, cos );
		Pyplot.plot( linspace, sin );
		
		Pyplot.show();
		
	}
	
	static function call( x:Float ):Void {
		
		trace( x );
	}
	
}