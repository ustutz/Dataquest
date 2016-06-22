package;
using PyHelpers;

import numpy.Numpy;
import matplotlib.pyplot.Pyplot;
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
		
		/* This doesn't work.
		Pyplot.plot( linspace, cos );
		Pyplot.plot( linspace, sin );
		
		created python code has asterisks befor vars:
		
		-----------------------------------------------------
        
		cos = numpy_Numpy_Module.cos(*linspace)
        sin = numpy_Numpy_Module.sin(*linspace)
        matplotlib_pyplot_Pyplot_Module.plot(*linspace,**cos)
        matplotlib_pyplot_Pyplot_Module.plot(*linspace,**sin)
		
		-----------------------------------------------------
		*/
		
		// There are two ways to solve arguments problem
		// 1. define args as VarArgs
		var args1:VarArgs<Dynamic> = [ linspace, cos ];
		Pyplot.plot( args1 ); 
		
		// 2. using the call function of PyHelpers
		Pyplot.plot.call( linspace, sin );
		
		Pyplot.show();
		
	}
	
}