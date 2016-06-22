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
		
		var mu = 100;
		var sigma = 15;
		var x = mu + sigma * untyped Numpy.random.randn( 10000 );
		
		var n = Pyplot.hist.call( x, 50, normed => 1, facecolor => 'g', alpha => 0.75 );
		
		Pyplot.xlabel( 'Smarts' );
		Pyplot.ylabel( 'Probability' );
		Pyplot.title( 'Histogram of IQ' );
		Pyplot.text( 60, .025, Syntax.pythonCode( "r'$\\mu=100,\\ \\sigma=15$'" ) );
		Pyplot.axis.call( [40, 160, 0, 0.03] );
		Pyplot.grid( true );
		Pyplot.show();
	}
	
}