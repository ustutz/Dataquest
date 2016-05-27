package;

class Script {

	static function main() {
		
		var cities = ['Albuquerque', 'Anaheim', 'Anchorage', 'Arlington', 'Atlanta', 'Aurora', 'Austin', 'Bakersfield', 'Baltimore', 'Boston', 'Buffalo', 'Charlotte-Mecklenburg', 'Cincinnati', 'Cleveland', 'Colorado Springs', 'Corpus Christi', 'Dallas', 'Denver', 'Detroit', 'El Paso', 'Fort Wayne', 'Fort Worth', 'Fresno', 'Greensboro', 'Henderson', 'Houston', 'Indianapolis', 'Jacksonville', 'Jersey City', 'Kansas City', 'Las Vegas', 'Lexington', 'Lincoln', 'Long Beach', 'Los Angeles', 'Louisville Metro', 'Memphis', 'Mesa', 'Miami', 'Milwaukee', 'Minneapolis', 'Mobile', 'Nashville', 'New Orleans', 'New York', 'Newark', 'Oakland', 'Oklahoma City', 'Omaha', 'Philadelphia', 'Phoenix', 'Pittsburgh', 'Plano', 'Portland', 'Raleigh', 'Riverside', 'Sacramento', 'San Antonio', 'San Diego', 'San Francisco', 'San Jose', 'Santa Ana', 'Seattle', 'St. Louis', 'St. Paul', 'Stockton', 'Tampa', 'Toledo', 'Tucson', 'Tulsa', 'Virginia Beach', 'Washington', 'Wichita'];
		
		var result = 0;
		
		if ( cities[2] == 'Anchorage' ) {
			result = 1;
		}
		
		trace( result );
	}
	
}