package;
using PyHelpers;

import numpy.Numpy;

// error with extern - compiler adds * and ** befor vars when writing arguments fo plot function like this
// import matplotlib.pyplot.Pyplot;

// I created a custom Pyplot extern for just the two parameters of plot

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