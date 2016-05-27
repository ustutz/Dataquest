package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var data = File.getContent( "crime_rates.csv" );
		
		data = StringTools.replace( data, '\r', '' );
		
		var rows = data.split( '\n' );
		
		var ten_rows = rows.slice( 0, 10 );
		for( row in ten_rows ) {
			trace( row );
		}
	}
	
}