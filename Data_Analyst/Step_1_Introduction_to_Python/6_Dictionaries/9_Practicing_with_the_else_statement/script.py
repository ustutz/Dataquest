class Script:

	@staticmethod
	def main():
		planet_names = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Neptune", "Uranus"]
		short_names = list()
		long_names = list()
		_g = 0
		while (_g < len(planet_names)):
			planet_name = (planet_names[_g] if _g >= 0 and _g < len(planet_names) else None)
			_g = (_g + 1)
			if (len(planet_name) > 5):
				long_names.append(planet_name)
			else:
				short_names.append(planet_name)
		print(str(short_names))
		print(str(long_names))


class haxe_io_Eof:

	def toString(self):
		return "Eof"



class python_internal_ArrayImpl:

	@staticmethod
	def _get(x,idx):
		if ((idx > -1) and ((idx < len(x)))):
			return x[idx]
		else:
			return None



Script.main()