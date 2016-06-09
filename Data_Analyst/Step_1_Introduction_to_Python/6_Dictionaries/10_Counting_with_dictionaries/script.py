class Script:

	@staticmethod
	def main():
		pantry = ["apple", "orange", "grape", "apple", "orange", "apple", "tomato", "potato", "grape"]
		pantry_counts = dict()
		_g = 0
		while (_g < len(pantry)):
			item = (pantry[_g] if _g >= 0 and _g < len(pantry) else None)
			_g = (_g + 1)
			if item in pantry_counts:
				val = (pantry_counts.get(item) + 1)
				pantry_counts[item] = val
			else:
				pantry_counts[item] = 1
		print(str(pantry_counts))


class python_internal_ArrayImpl:

	@staticmethod
	def _get(x,idx):
		if ((idx > -1) and ((idx < len(x)))):
			return x[idx]
		else:
			return None



Script.main()