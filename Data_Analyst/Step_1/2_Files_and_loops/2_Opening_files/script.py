import builtins as python_lib_Builtins


class Script:

	@staticmethod
	def main():
		a = sys_io_File.read("test.txt",False)
		print(str(a))
		f = sys_io_File.read("crime_rates.csv",False)
		print(str(f))


class haxe_io_Input:
	pass


class haxe_io_Eof:

	def toString(self):
		return "Eof"



class _HxException(Exception):

	def __init__(self,val):
		self.val = None
		message = str(val)
		super().__init__(message)
		self.val = val



class python_io_NativeInput(haxe_io_Input):

	def __init__(self,s):
		self.stream = None
		self.wasEof = None
		self.stream = s
		self.wasEof = False
		if (not self.stream.readable()):
			raise _HxException("Write-only stream")



class python_io_IInput:
	pass


class python_io_NativeBytesInput(python_io_NativeInput):

	def __init__(self,stream):
		super().__init__(stream)


class python_io_IFileInput:
	pass


class python_io_FileBytesInput(python_io_NativeBytesInput):

	def __init__(self,stream):
		super().__init__(stream)


class python_io_NativeTextInput(python_io_NativeInput):

	def __init__(self,stream):
		super().__init__(stream)


class python_io_FileTextInput(python_io_NativeTextInput):

	def __init__(self,stream):
		super().__init__(stream)


class python_io_IoTools:

	@staticmethod
	def createFileInputFromText(t):
		return sys_io_FileInput(python_io_FileTextInput(t))

	@staticmethod
	def createFileInputFromBytes(t):
		return sys_io_FileInput(python_io_FileBytesInput(t))


class sys_io_File:

	@staticmethod
	def read(path,binary = True):
		if (binary is None):
			binary = True
		mode = None
		if binary:
			mode = "rb"
		else:
			mode = "r"
		f = python_lib_Builtins.open(path,mode,-1,None,None,(None if binary else ""))
		if binary:
			return python_io_IoTools.createFileInputFromBytes(f)
		else:
			return python_io_IoTools.createFileInputFromText(f)


class sys_io_FileInput(haxe_io_Input):

	def __init__(self,impl):
		self.impl = None
		self.impl = impl




Script.main()