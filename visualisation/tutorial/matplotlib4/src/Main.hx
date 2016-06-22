package;
using PyHelpers;

import numpy.Numpy;
import matplotlib.pyplot.Pyplot;
import python.Syntax;

/**
 * ...
 * @author Urs Stutz
 */
class Main {
	
	static function main() {
		
		var t = Numpy.arange( 0., 5., 0.2 );
		
		Pyplot.plot.call( t, t, 'r--', t, Syntax.pythonCode('t**2'), 'bs', t, Syntax.pythonCode('t**3'), 'g^' ); 
		Pyplot.show();
		
	}
	
}