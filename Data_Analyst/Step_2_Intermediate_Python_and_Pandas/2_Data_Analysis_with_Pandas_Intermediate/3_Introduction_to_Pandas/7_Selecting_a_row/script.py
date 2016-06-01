import pandas as pandas_Pandas_Module


class Script:

	@staticmethod
	def main():
		food_info = pandas_Pandas_Module.read_csv("../food_info.csv")
		print(str(food_info.dtypes))



Script.main()