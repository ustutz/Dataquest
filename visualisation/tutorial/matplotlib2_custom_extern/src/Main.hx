package;
using PyHelpers;

import numpy.Numpy;

// error with extern - compiler adds * and ** befor vars
// import matplotlib.pyplot.Pyplot;

// I created a custom Pyplot extern for just the two parameters of plot

/**
 * ...
 * @author Urs Stutz
 */
class Main {
	
	static function main() {
		
		Pyplot.plot.call( [1,2,3,4] ); 
		Pyplot.ylabel('some numbers');
		Pyplot.show();
		
	}
	
}