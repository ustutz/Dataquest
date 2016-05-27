package;

import python.Lib;
import sys.io.File;

class Script {
	
	static function main() {
		
		var weather = getWeather();
		
		var count = 0;
		for ( day in weather ) {
			count++;
		}
		
		trace( count );
	}
	
	
	static function getWeather():Array<String> {
		
		// weather_data has already been read in automatically to make things easier.
		var weather_data = getWeatherData();
		
		var weather = new Array<String>();
		
		for ( entry in weather_data ) {
			weather.push( entry[1] );
		}
		
		return weather;
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