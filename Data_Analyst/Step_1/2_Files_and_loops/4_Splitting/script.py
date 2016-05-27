import builtins as python_lib_Builtins


class Script:

	@staticmethod
	def main():
		sample = "john,plastic,joe"
		split_list = sample.split(",")
		print(str(split_list))
		string_two = "How much wood\ncan a woodchuck chuck\nif a woodchuck\ncan chuck wood?"
		split_string_two = string_two.split("\n")
		print(str(split_string_two))
		data = sys_io_File.getContent("crime_rates.csv")
		rows = data.split("\n")
		print(str(rows[0:6]))


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