import pandas as Pandas


class Script:

	@staticmethod
	def main():
		food_info = Pandas.read_csv("../food_info.csv")
		print(str(type(food_info)))



Script.main()