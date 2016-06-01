import pandas as pandas_Pandas_Module


class Script:

	@staticmethod
	def main():
		food_info = pandas_Pandas_Module.read_csv("../food_info.csv")
		first_rows = food_info.head(3)
		print(str(first_rows))



Script.main()