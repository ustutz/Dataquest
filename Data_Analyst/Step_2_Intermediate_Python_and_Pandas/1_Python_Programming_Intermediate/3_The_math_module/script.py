import math as python_lib_Math
import math as Math


class Script:

	@staticmethod
	def main():
		a = python_lib_Math.sqrt(16.0)
		b = Math.ceil(111.3)
		c = Math.floor(89.9)
		print(str(a))
		print(str(b))
		print(str(c))


class haxe_io_Eof:

	def toString(self):
		return "Eof"


Math.NEGATIVE_INFINITY = float("-inf")
Math.POSITIVE_INFINITY = float("inf")
Math.NaN = float("nan")
Math.PI = python_lib_Math.pi


Script.main()