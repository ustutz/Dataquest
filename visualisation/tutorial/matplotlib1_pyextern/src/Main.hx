package;
using PyHelpers;

import numpy.Numpy;
import matplotlib.pyplot.Pyplot;
import python.Dict;
import python.VarArgs;

/**
 * ...
 * @author Urs Stutz
 */
class Main {
	
	static function main() {
		
		var linspace = Numpy.linspace.call( -Numpy.pi, Numpy.pi, 256, endpoint => true );
		var cos = Numpy.cos( linspace );
		var sin = Numpy.sin( linspace );
		
		// to solve arguments problem: first define arguments als VarArgs
		var args1:VarArgs<Dynamic> = [ linspace, cos ];
		Pyplot.plot.call( args1 ); 
		
		var args2:VarArgs<Dynamic> = [ linspace, sin ];
		Pyplot.plot.call( args2 );
		
		Pyplot.show();
		
	}
	
}