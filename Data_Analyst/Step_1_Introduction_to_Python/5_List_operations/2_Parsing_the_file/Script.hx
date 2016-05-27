package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var data = File.getContent( "la_weather.csv" );
		data = StringTools.replace( data, '\r', '' );
		var rows = data.split( '\n' );
		
		var weather_data = [];
		
		for ( row in rows ) {
			var comma_list = row.split( ',' );
			weather_data.push( comma_list );
		}
		
		trace( weather_data.slice( 0, 10 ));
	}
	
}