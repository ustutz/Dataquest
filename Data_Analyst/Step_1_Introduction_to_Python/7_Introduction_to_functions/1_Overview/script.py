import builtins as python_lib_Builtins


class Script:

	@staticmethod
	def main():
		vocabulary = sys_io_File.getContent("dictionary.txt")
		print(str(vocabulary))


class haxe_io_Eof:

	def toString(self):
		return "Eof"



class sys_io_File:

	@staticmethod
	def getContent(path):
		f = python_lib_Builtins.open(path,"r",-1,"utf-8",None,"")
		content = f.read(-1)
		f.close()
		return content



Script.main()