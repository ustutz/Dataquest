class Script:

	@staticmethod
	def main():
		animals = ["cat", "dog", "rabbit", "horse", "giant_horrible_monster"]
		cat_found = Script.findInArray("cat",animals)
		space_monster_found = Script.findInArray("space_monster",animals)
		print(str(cat_found))
		print(str(space_monster_found))

	@staticmethod
	def findInArray(value,array):
		_g = 0
		while (_g < len(array)):
			entry = (array[_g] if _g >= 0 and _g < len(array) else None)
			_g = (_g + 1)
			if HxOverrides.eq(value,entry):
				return True
				break
		return False


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


class HxOverrides:

	@staticmethod
	def eq(a,b):
		if (isinstance(a,list) or isinstance(b,list)):
			return a is b
		return (a == b)



Script.main()