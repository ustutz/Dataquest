import math as python_lib_Math
import math as Math


class Script:

	@staticmethod
	def main():
		a = None
		v = Math.PI
		if (v < 0):
			a = Math.NaN
		else:
			a = python_lib_Math.sqrt(v)
		b = Math.ceil(Math.PI)
		c = Math.floor(Math.PI)
		print(str(a))
		print(str(b))
		print(str(c))

Math.NEGATIVE_INFINITY = float("-inf")
Math.POSITIVE_INFINITY = float("inf")
Math.NaN = float("nan")
Math.PI = python_lib_Math.pi


Script.main()