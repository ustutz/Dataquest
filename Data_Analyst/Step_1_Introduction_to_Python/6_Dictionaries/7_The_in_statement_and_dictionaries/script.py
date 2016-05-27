class Script:

	@staticmethod
	def main():
		planet_numbers = None
		_g = haxe_ds_StringMap()
		_g.h["mercury"] = 1
		_g.h["venus"] = 2
		_g.h["earth"] = 3
		_g.h["mars"] = 4
		planet_numbers = _g
		jupiter_found = "jupiter" in planet_numbers.h
		earth_found = "earth" in planet_numbers.h
		print(str(jupiter_found))
		print(str(earth_found))


class haxe_IMap:
	pass


class haxe_ds_StringMap:

	def __init__(self):
		self.h = None
		self.h = dict()



class haxe_io_Eof:

	def toString(self):
		return "Eof"




Script.main()