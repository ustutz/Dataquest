package;
using PyHelpers;

import numpy.Numpy;
import numpy.Ndarray;
import matplotlib.pyplot.Pyplot;
import python.Syntax;

/**
 * ...
 * @author Urs Stutz
 */
class Main {
	
	static function main() {
		
		var ax = Pyplot.subplot.call( 111 );
		
		var t = Numpy.arange( 0.0, 5.0, 0.01 );
		var s = Numpy.cos( 2 * Numpy.pi * t );
		
		var line = Pyplot.plot.call( t, s, lw => 2 );
		Pyplot.annotate.call('local max', xy=>Syntax.pythonCode('(2, 1)'), xytext=>Syntax.pythonCode('(3, 1.5)'), arrowprops=>Syntax.pythonCode( "dict(facecolor='black', shrink=0.05)" ));
		
		Pyplot.ylim.call( -2, 2 );
		Pyplot.show();
	}
	
}