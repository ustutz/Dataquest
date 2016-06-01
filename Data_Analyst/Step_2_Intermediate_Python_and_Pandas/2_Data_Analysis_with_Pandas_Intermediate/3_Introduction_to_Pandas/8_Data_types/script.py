import pandas as pandas_Pandas_Module


class Script:

	@staticmethod
	def main():
		food_info = pandas_Pandas_Module.read_csv("../food_info.csv")
		hundredth_row = food_info.loc[99]
		print(str(hundredth_row))



Script.main()