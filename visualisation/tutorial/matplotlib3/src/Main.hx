package;
using PyHelpers;

import numpy.Numpy;
import matplotlib.pyplot.Pyplot;

/**
 * ...
 * @author Urs Stutz
 */
class Main {
	
	static function main() {
		
		Pyplot.plot.call( [1,2,3,4], [1,4,9,16], 'ro' ); 
		Pyplot.axis.call( [0, 6, 0, 20] );
		Pyplot.show();
		
	}
	
}