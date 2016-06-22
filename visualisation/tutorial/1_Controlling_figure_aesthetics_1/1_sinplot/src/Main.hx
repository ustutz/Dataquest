package;
using PyHelpers;

import numpy.Numpy;
import matplotlib.pyplot.Pyplot;
import seaborn.Seaborn;

/**
 * ...
 * @author Urs Stutz
 */
class Main {
	
	static function main() {
		
		Seaborn.set_style( "darkgrid" );
		sinplot();
		Pyplot.show();
	}
	
	static function sinplot( flip:Int = 1 ) {
		
		var x = Numpy.linspace.call( 0, 14, num=>100 );
		for ( i in 1...7 ) {
			Pyplot.plot.call( x, Numpy.sin( untyped x + i * 0.5 ) * ( 7 - i ) * flip );
		}
	}
}