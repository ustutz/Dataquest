package;

import python.Dict;
import sys.io.File;

class Script {
	
	static function main() {
		
		var weather = getWeatherWithoutHeader();
		
		var weather_counts = new Dict<String, Int>();
		
		for ( day in weather ) {
			if ( weather_counts.hasKey( day )) {
				weather_counts.set( day, weather_counts.get( day ) + 1 );
			} else {
				weather_counts.set( day, 1 );
			}
		}

		trace( weather_counts );
		
	}
	
	// function to get weather data in a single file list
	static function getWeatherWithoutHeader():Array<String> {
		
		// weather_data has already been read in automatically to make things easier.
		var weather_data = getWeatherData();
		
		var weather = new Array<String>();
		
		for ( entry in weather_data ) {
			weather.push( entry[1] );
		}
		
		return weather.slice( 1, weather.length );
	}
	
	// function to get weather data
	static function getWeatherData():Array<Array<String>> {
		
		var data = File.getContent( "la_weather.csv" );
		data = StringTools.replace( data, '\r', '' );
		var rows = data.split( '\n' );
		
		var weather_data = [];
		
		for ( row in rows ) {
			var comma_list = row.split( ',' );
			weather_data.push( comma_list );
		}
		
		return weather_data;
	}
	
}