class Script:

	@staticmethod
	def main():
		cities = ["Albuquerque", "Anaheim", "Anchorage", "Arlington", "Atlanta", "Aurora", "Austin", "Bakersfield", "Baltimore", "Boston", "Buffalo", "Charlotte-Mecklenburg", "Cincinnati", "Cleveland", "Colorado Springs", "Corpus Christi", "Dallas", "Denver", "Detroit", "El Paso", "Fort Wayne", "Fort Worth", "Fresno", "Greensboro", "Henderson", "Houston", "Indianapolis", "Jacksonville", "Jersey City", "Kansas City", "Las Vegas", "Lexington", "Lincoln", "Long Beach", "Los Angeles", "Louisville Metro", "Memphis", "Mesa", "Miami", "Milwaukee", "Minneapolis", "Mobile", "Nashville", "New Orleans", "New York", "Newark", "Oakland", "Oklahoma City", "Omaha", "Philadelphia", "Phoenix", "Pittsburgh", "Plano", "Portland", "Raleigh", "Riverside", "Sacramento", "San Antonio", "San Diego", "San Francisco", "San Jose", "Santa Ana", "Seattle", "St. Louis", "St. Paul", "Stockton", "Tampa", "Toledo", "Tucson", "Tulsa", "Virginia Beach", "Washington", "Wichita"]
		first_alb = ((cities[0] if 0 < len(cities) else None) == "Albuquerque")
		second_alb = ((cities[1] if 1 < len(cities) else None) == "Albuquerque")
		first_last = ((cities[0] if 0 < len(cities) else None) == python_internal_ArrayImpl._get(cities, (len(cities) - 1)))
		print(str(first_alb))
		print(str(second_alb))
		print(str(first_last))


class python_internal_ArrayImpl:

	@staticmethod
	def _get(x,idx):
		if ((idx > -1) and ((idx < len(x)))):
			return x[idx]
		else:
			return None



Script.main()