package;

class Script {

	static function main() {
		
		var cities = ['Albuquerque', 'Anaheim', 'Anchorage', 'Arlington', 'Atlanta', 'Aurora', 'Austin', 'Bakersfield', 'Baltimore', 'Boston', 'Buffalo', 'Charlotte-Mecklenburg', 'Cincinnati', 'Cleveland', 'Colorado Springs', 'Corpus Christi', 'Dallas', 'Denver', 'Detroit', 'El Paso', 'Fort Wayne', 'Fort Worth', 'Fresno', 'Greensboro', 'Henderson', 'Houston', 'Indianapolis', 'Jacksonville', 'Jersey City', 'Kansas City', 'Las Vegas', 'Lexington', 'Lincoln', 'Long Beach', 'Los Angeles', 'Louisville Metro', 'Memphis', 'Mesa', 'Miami', 'Milwaukee', 'Minneapolis', 'Mobile', 'Nashville', 'New Orleans', 'New York', 'Newark', 'Oakland', 'Oklahoma City', 'Omaha', 'Philadelphia', 'Phoenix', 'Pittsburgh', 'Plano', 'Portland', 'Raleigh', 'Riverside', 'Sacramento', 'San Antonio', 'San Diego', 'San Francisco', 'San Jose', 'Santa Ana', 'Seattle', 'St. Louis', 'St. Paul', 'Stockton', 'Tampa', 'Toledo', 'Tucson', 'Tulsa', 'Virginia Beach', 'Washington', 'Wichita'];
		
		var first_alb = cities[0] == "Albuquerque";
		var second_alb = cities[1] == "Albuquerque";
		var first_last = cities[0] == cities[cities.length - 1];
		
		trace( first_alb );
		trace( second_alb );
		trace( first_last );
	}
	
}