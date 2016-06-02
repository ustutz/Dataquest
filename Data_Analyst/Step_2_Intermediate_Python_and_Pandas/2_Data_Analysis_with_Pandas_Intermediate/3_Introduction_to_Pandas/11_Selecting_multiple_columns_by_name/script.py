import pandas as pandas_Pandas_Module


class Script:

	@staticmethod
	def main():
		food_info = pandas_Pandas_Module.read_csv("../food_info.csv")
		selenium_thiamin = food_info[["Selenium_(µg)", "Thiamin_(mg)"]]
		print(str(selenium_thiamin))



Script.main()