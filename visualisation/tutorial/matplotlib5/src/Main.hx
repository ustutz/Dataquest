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
		
		var t1 = Numpy.arange( 0.0, 5.0, 0.1 );
		var t2 = Numpy.arange( 0.0, 5.0, 0.02 );
		
		Pyplot.figure( 1 );
		Pyplot.subplot.call( 211 );
		Pyplot.plot.call( t1, f( t1 ), 'bo', untyped t2, f( t2 ), 'k' );
		
		Pyplot.subplot.call( 212 );
		Pyplot.plot.call( t2, Numpy.cos( 2 * Numpy.pi * untyped t2 ), 'r--' );
		
		Pyplot.show();
		
	}
	
	static function f( t:Ndarray ):Float {
		return Numpy.exp( untyped -t ) * Numpy.cos( 2 * Numpy.pi * untyped t );
	}
}