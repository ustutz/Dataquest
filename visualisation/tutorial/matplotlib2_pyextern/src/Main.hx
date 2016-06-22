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
		
		/* this doesn't work
		Pyplot.plot( [1,2,3,4] ); 
		
		Generated python code has asterisks befor variables
		
		-----------------------------------------------
		
		this1 = [1, 2, 3, 4]
        matplotlib_pyplot_Pyplot_Module.plot(*this1)

		-----------------------------------------------
*/		
		// Solution use call function of PyHelpers macro
		Pyplot.plot.call( [1,2,3,4] ); 
		Pyplot.ylabel('some numbers');
		Pyplot.show();
		
	}
	
}