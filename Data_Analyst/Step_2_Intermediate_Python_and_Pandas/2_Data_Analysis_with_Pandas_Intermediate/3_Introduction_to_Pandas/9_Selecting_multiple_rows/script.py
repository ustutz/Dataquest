import pandas as pandas_Pandas_Module


class Script:

	@staticmethod
	def main():
		food_info = pandas_Pandas_Module.read_csv("../food_info.csv")
		dimensions = food_info.shape
		rows = (dimensions[0] if 0 < len(dimensions) else None)
		last_rows = food_info.loc[rows - 6:rows - 1]
		print(str(last_rows))


class python_internal_ArrayImpl:

	@staticmethod
	def _get(x,idx):
		if ((idx > -1) and ((idx < len(x)))):
			return x[idx]
		else:
			return None



Script.main()