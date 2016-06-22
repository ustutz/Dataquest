package;
using PyHelpers;

import numpy.Numpy;
//import matplotlib.pyplot.Pyplot; // not working! - compiler adds * and ** befor vars - works with custom Pyplot extern

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
	
}