class Script:

	@staticmethod
	def main():
		slice_me = [7, 6, 4, 5, 6]
		slice1 = slice_me[2:4]
		slice2 = slice_me[1:2]
		slice3 = slice_me[3:5]
		print(str(slice1))
		print(str(slice2))
		print(str(slice3))


class haxe_io_Eof:

	def toString(self):
		return "Eof"




Script.main()