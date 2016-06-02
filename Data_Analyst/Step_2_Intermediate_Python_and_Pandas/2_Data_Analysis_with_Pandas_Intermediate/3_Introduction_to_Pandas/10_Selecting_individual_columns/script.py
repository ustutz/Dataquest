import pandas as pandas_Pandas_Module


class Script:

	@staticmethod
	def main():
		food_info = pandas_Pandas_Module.read_csv("../food_info.csv")
		saturated_fat = food_info["FA_Sat_(g)"]
		cholesterol = food_info["Cholestrl_(mg)"]
		print(str((saturated_fat[0] if 0 < len(saturated_fat) else None)))
		print(str((cholesterol[0] if 0 < len(cholesterol) else None)))


class python_internal_ArrayImpl:

	@staticmethod
	def _get(x,idx):
		if ((idx > -1) and ((idx < len(x)))):
			return x[idx]
		else:
			return None



Script.main()