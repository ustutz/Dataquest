import json as python_lib_Json


class Script:

	@staticmethod
	def main():
		best_food_chains = ["Taco Bell", "Shake Shack", "Chipotle"]
		print(str(type(best_food_chains)))
		best_food_chains_string = python_lib_Json.dumps(best_food_chains)
		print(str(type(best_food_chains_string)))
		print(str(type(python_lib_Json.loads(best_food_chains_string))))
		fast_food_franchise = dict()
		fast_food_franchise["Subway"] = 24722
		fast_food_franchise["McDonalds"] = 14098
		fast_food_franchise["Starbucks"] = 10821
		fast_food_franchise["Pizza Hut"] = 7600
		fast_food_franchise_string = python_lib_Json.dumps(fast_food_franchise)
		print(str(type(fast_food_franchise_string)))



Script.main()