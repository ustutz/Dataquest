package;
using PyHelpers;

import python.Syntax;

class Script {
	
	static private var countries:Array<String>;
	
	static function main() {
		
		countries = new Array<String>();
		
		var world_alcohol = NumPy.genfromtxt.call( "world_alcohol.csv", dtype=>'U75', skip_header=>true, delimiter=>"," );
		var is_value_empty = Syntax.pythonCode( 'world_alcohol[:,4] == ""' );
		Syntax.pythonCode( 'world_alcohol[is_value_empty,4] = "0"' );
		
		var countryColumn:Array<String> = Syntax.pythonCode( 'world_alcohol[:,2]' );
		for ( country in countryColumn ) {
			add_country_to_array( country );
		}
		
		var totals = new Map<String,Float>();
		
		for ( country in countries ) {
			var country_consumption = consumption_country_year( world_alcohol, country, "1989" );
			totals.set( country, country_consumption ); trace( country + " consumed " + Std.string( country_consumption ));
		}

	}

	static function consumption_country_year( world_alcohol:NumPy, country:String, year:String ):Float {
		
		var country_year_filter = Syntax.pythonCode( '(world_alcohol[:,0] == year) & (world_alcohol[:,2] == country)' );
		var country_year = Syntax.pythonCode( 'world_alcohol[country_year_filter,:]' );
		
		var country_alcohol:NumPy = Syntax.pythonCode( 'country_year[:, 4]' );
		country_alcohol = country_alcohol.astype('float');
		
		var total_country_drinking = country_alcohol.sum();
		
		return( total_country_drinking );
	}

	static function add_country_to_array( additionalCountry:String ):Void {
		
		var isFound = false;
		for ( country in countries ) {
			if ( additionalCountry == country ) {
				isFound = true;
				break;
			}
		}
		if ( !isFound ) {
			countries.push( additionalCountry ); //trace( "add country " + additionalCountry );
		}
	}
	
}
