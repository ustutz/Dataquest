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
		
		// make up some data in the interval ]0, 1[
		
		var y = untyped Numpy.random.normal( Syntax.pythonCode( 'loc = 0.5, scale = 0.4, size = 1000' ));
		y = Syntax.pythonCode( 'y[(y > 0) & (y < 1)]' );
		untyped y.sort();
		var x = Numpy.arange( untyped len( y ));
		
		// plot with various axes scales
		Pyplot.figure.call( 1 );
		
		// linear
		Pyplot.subplot.call( 221 );
		Pyplot.plot.call( x, y );
		Pyplot.yscale.call( 'linear' );
		Pyplot.title( 'linear' );
		Pyplot.grid( true );
		
		// log
		Pyplot.subplot.call( 222 );
		Pyplot.plot.call( x, y );
		Pyplot.yscale.call( 'log' );
		Pyplot.title( 'log' );
		Pyplot.grid( true );
		
		// symmetric log
		Pyplot.subplot.call( 223 );
		Pyplot.plot.call( x, untyped y - untyped y.mean() );
		Pyplot.yscale.call( 'symlog', linthreshy => 0.05 );
		Pyplot.title( 'symlog' );
		Pyplot.grid( true );
		
		// logit
		Pyplot.subplot.call( 224 );
		Pyplot.plot.call( x, y );
		Pyplot.yscale.call( 'logit' );
		Pyplot.title( 'logit' );
		Pyplot.grid( true );
		
		
		Pyplot.show();
	}
	
}