class Script:

	@staticmethod
	def main():
		three_rows = ["Albuquerque,749", "Anaheim,371", "Anchorage,828"]
		final_list = []
		_g = 0
		while (_g < len(three_rows)):
			row = (three_rows[_g] if _g >= 0 and _g < len(three_rows) else None)
			_g = (_g + 1)
			split_list = row.split(",")
			final_list.append(split_list)
		print(str(final_list))
		print(str((final_list[0] if 0 < len(final_list) else None)))
		print(str((final_list[1] if 1 < len(final_list) else None)))
		print(str((final_list[2] if 2 < len(final_list) else None)))


class python_internal_ArrayImpl:

	@staticmethod
	def _get(x,idx):
		if ((idx > -1) and ((idx < len(x)))):
			return x[idx]
		else:
			return None



Script.main()