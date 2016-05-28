import math as python_lib_Math
import math as Math
import builtins as python_lib_Builtins
import functools as python_lib_Functools
import inspect as python_lib_Inspect
from io import StringIO as python_lib_io_StringIO


class _hx_AnonObject:
	def __init__(self, fields):
		self.__dict__ = fields


class Enum:
	_hx_class_name = "Enum"
	_hx_fields = ["tag", "index", "params"]
	_hx_methods = ["__str__"]

	def __init__(self,tag,index,params):
		self.tag = None
		self.index = None
		self.params = None
		self.tag = tag
		self.index = index
		self.params = params

	def __str__(self):
		if (self.params is None):
			return self.tag
		else:
			return (((HxOverrides.stringOrNull(self.tag) + "(") + HxOverrides.stringOrNull(",".join([python_Boot.toString1(x1,'') for x1 in self.params]))) + ")")



class EnumValue:
	_hx_class_name = "EnumValue"


class Lambda:
	_hx_class_name = "Lambda"
	_hx_statics = ["has"]

	@staticmethod
	def has(it,elt):
		_hx_local_0 = HxOverrides.iterator(it)
		while _hx_local_0.hasNext():
			x = _hx_local_0.next()
			if (x == elt):
				return True
		return False


class Script:
	_hx_class_name = "Script"
	_hx_statics = ["csv", "main", "nfl_wins"]
	csv = None

	@staticmethod
	def main():
		f = sys_io_File.getContent("nfl.csv")
		Script.csv = format_csv_Reader.parseCsv(f)
		browns_2010_wins = Script.nfl_wins("2010","Cleveland Browns")
		eagles_2011_wins = Script.nfl_wins("2011","Philadelphia Eagles")
		print(str(("Cleveland Browns 2010 " + Std.string(browns_2010_wins))))
		print(str(("Philadelphia Eagles 2011 " + Std.string(eagles_2011_wins))))

	@staticmethod
	def nfl_wins(year,team_name):
		counter = 0
		_g = 0
		_g1 = Script.csv
		while (_g < len(_g1)):
			row = (_g1[_g] if _g >= 0 and _g < len(_g1) else None)
			_g = (_g + 1)
			if (((row[0] if 0 < len(row) else None) == year) and (((row[2] if 2 < len(row) else None) == team_name))):
				counter = (counter + 1)
		return counter


class Std:
	_hx_class_name = "Std"
	_hx_statics = ["string"]

	@staticmethod
	def string(s):
		return python_Boot.toString1(s,"")


class format_csv_Reader:
	_hx_class_name = "format.csv.Reader"
	_hx_fields = ["sep", "esc", "eol", "inp", "eolsize", "buffer", "pos", "bufferOffset", "cachedToken", "cachedPos"]
	_hx_methods = ["substring", "stringLength", "fetchBytes", "get", "peekToken", "nextToken", "readSafeChar", "readEscapedChar", "readEscapedString", "readString", "readField", "readRecord", "open", "reset", "readAll", "hasNext", "next", "iterator"]
	_hx_statics = ["FETCH_SIZE", "readCsv", "parseCsv", "read"]

	def __init__(self,separator = None,escape = None,endOfLine = None):
		self.sep = None
		self.esc = None
		self.eol = None
		self.inp = None
		self.eolsize = None
		self.buffer = None
		self.pos = None
		self.bufferOffset = None
		self.cachedToken = None
		self.cachedPos = None
		_g = self
		if (separator is not None):
			self.sep = separator
		else:
			self.sep = ","
		if (self.stringLength(self.sep) != 1):
			raise _HxException((("Separator string \"" + HxOverrides.stringOrNull(self.sep)) + "\" not allowed, only single char"))
		if (escape is not None):
			self.esc = escape
		else:
			self.esc = "\""
		if (self.stringLength(self.esc) != 1):
			raise _HxException((("Escape string \"" + HxOverrides.stringOrNull(self.esc)) + "\" not allowed, only single char"))
		if (endOfLine is not None):
			self.eol = endOfLine
		else:
			self.eol = ["\r\n", "\n"]
		if (Lambda.has(self.eol,None) or Lambda.has(self.eol,"")):
			raise _HxException("EOL sequences can't be empty")
		def _hx_local_0(a,b):
			return (_g.stringLength(b) - _g.stringLength(a))
		self.eol.sort(key= python_lib_Functools.cmp_to_key(_hx_local_0))
		self.eolsize = list(map(self.stringLength,self.eol))
		self.open(None,None)

	def substring(self,_hx_str,pos,length = None):
		return HxString.substr(_hx_str,pos,length)

	def stringLength(self,_hx_str):
		return len(_hx_str)

	def fetchBytes(self,n):
		if (self.inp is None):
			return None
		try:
			_hx_bytes = haxe_io_Bytes.alloc(n)
			got = self.inp.readBytes(_hx_bytes,0,n)
			return _hx_bytes.getString(0,got)
		except Exception as _hx_e:
			_hx_e1 = _hx_e.val if isinstance(_hx_e, _HxException) else _hx_e
			if isinstance(_hx_e1, haxe_io_Eof):
				e = _hx_e1
				return None
			else:
				raise _hx_e

	def get(self,p,_hx_len):
		bpos = (p - self.bufferOffset)
		if ((bpos + _hx_len) > self.stringLength(self.buffer)):
			more = self.fetchBytes(4096)
			if (more is not None):
				self.buffer = (HxOverrides.stringOrNull(self.substring(self.buffer,(self.pos - self.bufferOffset))) + ("null" if more is None else more))
				self.bufferOffset = self.pos
				bpos = (p - self.bufferOffset)
		ret = self.substring(self.buffer,bpos,_hx_len)
		if (ret != ""):
			return ret
		else:
			return None

	def peekToken(self,skip = 0):
		if (skip is None):
			skip = 0
		token = self.cachedToken
		p = self.pos
		if (token is not None):
			p = self.cachedPos
			skip = (skip - 1)
		def _hx_local_2():
			nonlocal skip
			_hx_local_1 = skip
			skip = (skip - 1)
			return _hx_local_1
		while (_hx_local_2() >= 0):
			token = self.get(p,1)
			if (token is None):
				break
			_g1 = 0
			_g = len(self.eol)
			while (_g1 < _g):
				i = _g1
				_g1 = (_g1 + 1)
				t = self.get(p,(self.eolsize[i] if i >= 0 and i < len(self.eolsize) else None))
				if (t == (self.eol[i] if i >= 0 and i < len(self.eol) else None)):
					token = t
					break
			p = (p + self.stringLength(token))
			if (self.cachedToken is None):
				self.cachedToken = token
				self.cachedPos = p
		return token

	def nextToken(self):
		ret = self.peekToken()
		if (ret is None):
			return None
		self.pos = self.cachedPos
		self.cachedToken = None
		return ret

	def readSafeChar(self):
		cur = self.peekToken()
		if (((cur == self.sep) or ((cur == self.esc))) or Lambda.has(self.eol,cur)):
			return None
		return self.nextToken()

	def readEscapedChar(self):
		cur = self.peekToken()
		if (cur == self.esc):
			if (self.peekToken(1) != self.esc):
				return None
			self.nextToken()
		return self.nextToken()

	def readEscapedString(self):
		buf_b = python_lib_io_StringIO()
		x = self.readEscapedChar()
		while (x is not None):
			buf_b.write(Std.string(x))
			x = self.readEscapedChar()
		return buf_b.getvalue()

	def readString(self):
		buf_b = python_lib_io_StringIO()
		x = self.readSafeChar()
		while (x is not None):
			buf_b.write(Std.string(x))
			x = self.readSafeChar()
		return buf_b.getvalue()

	def readField(self):
		cur = self.peekToken()
		if (cur == self.esc):
			self.nextToken()
			s = self.readEscapedString()
			fi = self.nextToken()
			if (fi != self.esc):
				raise _HxException(((("Missing " + HxOverrides.stringOrNull(self.esc)) + " at the end of escaped field ") + HxOverrides.stringOrNull((((HxOverrides.stringOrNull(HxString.substr(s,0,10)) + "[...]") if ((len(s) > 15)) else s)))))
			return s
		else:
			return self.readString()

	def readRecord(self):
		r = []
		x = self.readField()
		r.append(x)
		while (self.peekToken() == self.sep):
			self.nextToken()
			x1 = self.readField()
			r.append(x1)
		return r

	def open(self,string = None,stream = None):
		if (string is not None):
			self.buffer = string
		else:
			self.buffer = ""
		self.inp = stream
		self.pos = 0
		self.bufferOffset = 0
		self.cachedToken = None
		self.cachedPos = 0
		return self

	def reset(self,string = None,stream = None):
		return self.open(string,stream)

	def readAll(self):
		r = []
		nl = None
		while (self.peekToken() is not None):
			x = self.readRecord()
			r.append(x)
			nl = self.nextToken()
			if ((nl is not None) and (not Lambda.has(self.eol,nl))):
				raise _HxException((("Unexpected \"" + ("null" if nl is None else nl)) + "\" after record"))
		return r

	def hasNext(self):
		return (self.peekToken() is not None)

	def next(self):
		r = self.readRecord()
		nl = self.nextToken()
		if ((nl is not None) and (not Lambda.has(self.eol,nl))):
			raise _HxException((("Unexpected \"" + ("null" if nl is None else nl)) + "\" after record"))
		return r

	def iterator(self):
		return self

	@staticmethod
	def readCsv(stream,separator = None,escape = None,endOfLine = None):
		p = format_csv_Reader(separator, escape, endOfLine)
		p.inp = stream
		return p

	@staticmethod
	def parseCsv(text,separator = None,escape = None,endOfLine = None):
		p = format_csv_Reader(separator, escape, endOfLine)
		p.buffer = text
		return p.readAll()

	@staticmethod
	def read(text,separator = None,escape = None,endOfLine = None):
		return format_csv_Reader.parseCsv(text,separator,escape,endOfLine)



class haxe_io_Bytes:
	_hx_class_name = "haxe.io.Bytes"
	_hx_fields = ["length", "b"]
	_hx_methods = ["getString"]
	_hx_statics = ["alloc"]

	def __init__(self,length,b):
		self.length = None
		self.b = None
		self.length = length
		self.b = b

	def getString(self,pos,_hx_len):
		if (((pos < 0) or ((_hx_len < 0))) or (((pos + _hx_len) > self.length))):
			raise _HxException(haxe_io_Error.OutsideBounds)
		return self.b[pos:pos+_hx_len].decode('UTF-8','replace')

	@staticmethod
	def alloc(length):
		return haxe_io_Bytes(length, bytearray(length))



class haxe_io_Input:
	_hx_class_name = "haxe.io.Input"
	_hx_methods = ["readByte", "readBytes"]

	def readByte(self):
		raise _HxException("Not implemented")

	def readBytes(self,s,pos,_hx_len):
		k = _hx_len
		b = s.b
		if (((pos < 0) or ((_hx_len < 0))) or (((pos + _hx_len) > s.length))):
			raise _HxException(haxe_io_Error.OutsideBounds)
		while (k > 0):
			b[pos] = self.readByte()
			pos = (pos + 1)
			k = (k - 1)
		return _hx_len



class haxe_io_Eof:
	_hx_class_name = "haxe.io.Eof"
	_hx_methods = ["toString"]

	def toString(self):
		return "Eof"


class haxe_io_Error(Enum):
	_hx_class_name = "haxe.io.Error"

	@staticmethod
	def Custom(e):
		return haxe_io_Error("Custom", 3, [e])
haxe_io_Error.Blocked = haxe_io_Error("Blocked", 0, list())
haxe_io_Error.Overflow = haxe_io_Error("Overflow", 1, list())
haxe_io_Error.OutsideBounds = haxe_io_Error("OutsideBounds", 2, list())


class python_Boot:
	_hx_class_name = "python.Boot"
	_hx_statics = ["keywords", "toString1", "fields", "simpleField", "getInstanceFields", "getSuperClass", "getClassFields", "prefixLength", "unhandleKeywords"]

	@staticmethod
	def toString1(o,s):
		if (o is None):
			return "null"
		if isinstance(o,str):
			return o
		if (s is None):
			s = ""
		if (len(s) >= 5):
			return "<...>"
		if isinstance(o,bool):
			if o:
				return "true"
			else:
				return "false"
		if isinstance(o,int):
			return str(o)
		if isinstance(o,float):
			try:
				if (o == int(o)):
					def _hx_local_1():
						def _hx_local_0():
							v = o
							return Math.floor((v + 0.5))
						return str(_hx_local_0())
					return _hx_local_1()
				else:
					return str(o)
			except Exception as _hx_e:
				_hx_e1 = _hx_e.val if isinstance(_hx_e, _HxException) else _hx_e
				e = _hx_e1
				return str(o)
		if isinstance(o,list):
			o1 = o
			l = len(o1)
			st = "["
			s = (("null" if s is None else s) + "\t")
			_g = 0
			while (_g < l):
				i = _g
				_g = (_g + 1)
				prefix = ""
				if (i > 0):
					prefix = ","
				st = (("null" if st is None else st) + HxOverrides.stringOrNull(((("null" if prefix is None else prefix) + HxOverrides.stringOrNull(python_Boot.toString1((o1[i] if i >= 0 and i < len(o1) else None),s))))))
			st = (("null" if st is None else st) + "]")
			return st
		try:
			if hasattr(o,"toString"):
				return o.toString()
		except Exception as _hx_e:
			_hx_e1 = _hx_e.val if isinstance(_hx_e, _HxException) else _hx_e
			pass
		if (python_lib_Inspect.isfunction(o) or python_lib_Inspect.ismethod(o)):
			return "<function>"
		if hasattr(o,"__class__"):
			if isinstance(o,_hx_AnonObject):
				toStr = None
				try:
					fields = python_Boot.fields(o)
					fieldsStr = None
					_g1 = []
					_g11 = 0
					while (_g11 < len(fields)):
						f = (fields[_g11] if _g11 >= 0 and _g11 < len(fields) else None)
						_g11 = (_g11 + 1)
						x = ((("" + ("null" if f is None else f)) + " : ") + HxOverrides.stringOrNull(python_Boot.toString1(python_Boot.simpleField(o,f),(("null" if s is None else s) + "\t"))))
						_g1.append(x)
					fieldsStr = _g1
					toStr = (("{ " + HxOverrides.stringOrNull(", ".join([x1 for x1 in fieldsStr]))) + " }")
				except Exception as _hx_e:
					_hx_e1 = _hx_e.val if isinstance(_hx_e, _HxException) else _hx_e
					e2 = _hx_e1
					return "{ ... }"
				if (toStr is None):
					return "{ ... }"
				else:
					return toStr
			if isinstance(o,Enum):
				o2 = o
				l1 = len(o2.params)
				hasParams = (l1 > 0)
				if hasParams:
					paramsStr = ""
					_g2 = 0
					while (_g2 < l1):
						i1 = _g2
						_g2 = (_g2 + 1)
						prefix1 = ""
						if (i1 > 0):
							prefix1 = ","
						paramsStr = (("null" if paramsStr is None else paramsStr) + HxOverrides.stringOrNull(((("null" if prefix1 is None else prefix1) + HxOverrides.stringOrNull(python_Boot.toString1((o2.params[i1] if i1 >= 0 and i1 < len(o2.params) else None),s))))))
					return (((HxOverrides.stringOrNull(o2.tag) + "(") + ("null" if paramsStr is None else paramsStr)) + ")")
				else:
					return o2.tag
			if hasattr(o,"_hx_class_name"):
				if (o.__class__.__name__ != "type"):
					fields1 = python_Boot.getInstanceFields(o)
					fieldsStr1 = None
					_g3 = []
					_g12 = 0
					while (_g12 < len(fields1)):
						f1 = (fields1[_g12] if _g12 >= 0 and _g12 < len(fields1) else None)
						_g12 = (_g12 + 1)
						x1 = ((("" + ("null" if f1 is None else f1)) + " : ") + HxOverrides.stringOrNull(python_Boot.toString1(python_Boot.simpleField(o,f1),(("null" if s is None else s) + "\t"))))
						_g3.append(x1)
					fieldsStr1 = _g3
					toStr1 = (((HxOverrides.stringOrNull(o._hx_class_name) + "( ") + HxOverrides.stringOrNull(", ".join([x1 for x1 in fieldsStr1]))) + " )")
					return toStr1
				else:
					fields2 = python_Boot.getClassFields(o)
					fieldsStr2 = None
					_g4 = []
					_g13 = 0
					while (_g13 < len(fields2)):
						f2 = (fields2[_g13] if _g13 >= 0 and _g13 < len(fields2) else None)
						_g13 = (_g13 + 1)
						x2 = ((("" + ("null" if f2 is None else f2)) + " : ") + HxOverrides.stringOrNull(python_Boot.toString1(python_Boot.simpleField(o,f2),(("null" if s is None else s) + "\t"))))
						_g4.append(x2)
					fieldsStr2 = _g4
					toStr2 = (((("#" + HxOverrides.stringOrNull(o._hx_class_name)) + "( ") + HxOverrides.stringOrNull(", ".join([x1 for x1 in fieldsStr2]))) + " )")
					return toStr2
			if (o == str):
				return "#String"
			if (o == list):
				return "#Array"
			if callable(o):
				return "function"
			try:
				if hasattr(o,"__repr__"):
					return o.__repr__()
			except Exception as _hx_e:
				_hx_e1 = _hx_e.val if isinstance(_hx_e, _HxException) else _hx_e
				pass
			if hasattr(o,"__str__"):
				return o.__str__([])
			if hasattr(o,"__name__"):
				return o.__name__
			return "???"
		else:
			return str(o)

	@staticmethod
	def fields(o):
		a = []
		if (o is not None):
			if hasattr(o,"_hx_fields"):
				fields = o._hx_fields
				return list(fields)
			if isinstance(o,_hx_AnonObject):
				d = o.__dict__
				keys = d.keys()
				handler = python_Boot.unhandleKeywords
				for k in keys:
					a.append(handler(k))
			elif hasattr(o,"__dict__"):
				a1 = []
				d1 = o.__dict__
				keys1 = d1.keys()
				for k in keys1:
					a.append(k)
		return a

	@staticmethod
	def simpleField(o,field):
		if (field is None):
			return None
		field1 = None
		if field in python_Boot.keywords:
			field1 = ("_hx_" + field)
		elif ((((len(field) > 2) and ((ord(field[0]) == 95))) and ((ord(field[1]) == 95))) and ((ord(field[(len(field) - 1)]) != 95))):
			field1 = ("_hx_" + field)
		else:
			field1 = field
		if hasattr(o,field1):
			return getattr(o,field1)
		else:
			return None

	@staticmethod
	def getInstanceFields(c):
		f = None
		if hasattr(c,"_hx_fields"):
			f = c._hx_fields
		else:
			f = []
		if hasattr(c,"_hx_methods"):
			a = c._hx_methods
			f = (f + a)
		sc = python_Boot.getSuperClass(c)
		if (sc is None):
			return f
		else:
			scArr = python_Boot.getInstanceFields(sc)
			scMap = set(scArr)
			res = []
			_g = 0
			while (_g < len(f)):
				f1 = (f[_g] if _g >= 0 and _g < len(f) else None)
				_g = (_g + 1)
				if (not f1 in scMap):
					scArr.append(f1)
			return scArr

	@staticmethod
	def getSuperClass(c):
		if (c is None):
			return None
		try:
			if hasattr(c,"_hx_super"):
				return c._hx_super
			return None
		except Exception as _hx_e:
			_hx_e1 = _hx_e.val if isinstance(_hx_e, _HxException) else _hx_e
			pass
		return None

	@staticmethod
	def getClassFields(c):
		if hasattr(c,"_hx_statics"):
			x = c._hx_statics
			return list(x)
		else:
			return []

	@staticmethod
	def unhandleKeywords(name):
		if (HxString.substr(name,0,python_Boot.prefixLength) == "_hx_"):
			real = HxString.substr(name,python_Boot.prefixLength,None)
			if real in python_Boot.keywords:
				return real
		return name


class python_HaxeIterator:
	_hx_class_name = "python.HaxeIterator"
	_hx_fields = ["it", "x", "has", "checked"]
	_hx_methods = ["next", "hasNext"]

	def __init__(self,it):
		self.it = None
		self.x = None
		self.has = None
		self.checked = None
		self.checked = False
		self.has = False
		self.x = None
		self.it = it

	def next(self):
		if (not self.checked):
			self.hasNext()
		self.checked = False
		return self.x

	def hasNext(self):
		if (not self.checked):
			try:
				self.x = self.it.__next__()
				self.has = True
			except Exception as _hx_e:
				_hx_e1 = _hx_e.val if isinstance(_hx_e, _HxException) else _hx_e
				if isinstance(_hx_e1, StopIteration):
					s = _hx_e1
					self.has = False
					self.x = None
				else:
					raise _hx_e
			self.checked = True
		return self.has



class python_internal_ArrayImpl:
	_hx_class_name = "python.internal.ArrayImpl"
	_hx_statics = ["_get"]

	@staticmethod
	def _get(x,idx):
		if ((idx > -1) and ((idx < len(x)))):
			return x[idx]
		else:
			return None


class _HxException(Exception):
	_hx_class_name = "_HxException"
	_hx_fields = ["val"]
	_hx_methods = []
	_hx_statics = []
	_hx_super = Exception


	def __init__(self,val):
		self.val = None
		message = str(val)
		super().__init__(message)
		self.val = val



class HxOverrides:
	_hx_class_name = "HxOverrides"
	_hx_statics = ["iterator", "eq", "stringOrNull"]

	@staticmethod
	def iterator(x):
		if isinstance(x,list):
			return python_HaxeIterator(x.__iter__())
		return x.iterator()

	@staticmethod
	def eq(a,b):
		if (isinstance(a,list) or isinstance(b,list)):
			return a is b
		return (a == b)

	@staticmethod
	def stringOrNull(s):
		if (s is None):
			return "null"
		else:
			return s


class HxString:
	_hx_class_name = "HxString"
	_hx_statics = ["substr"]

	@staticmethod
	def substr(s,startIndex,_hx_len = None):
		if (_hx_len is None):
			return s[startIndex:]
		else:
			if (_hx_len == 0):
				return ""
			return s[startIndex:(startIndex + _hx_len)]


class sys_io_File:
	_hx_class_name = "sys.io.File"
	_hx_statics = ["getContent"]

	@staticmethod
	def getContent(path):
		f = python_lib_Builtins.open(path,"r",-1,"utf-8",None,"")
		content = f.read(-1)
		f.close()
		return content

Math.NEGATIVE_INFINITY = float("-inf")
Math.POSITIVE_INFINITY = float("inf")
Math.NaN = float("nan")
Math.PI = python_lib_Math.pi

format_csv_Reader.FETCH_SIZE = 4096
python_Boot.keywords = set(["and", "del", "from", "not", "with", "as", "elif", "global", "or", "yield", "assert", "else", "if", "pass", "None", "break", "except", "import", "raise", "True", "class", "exec", "in", "return", "False", "continue", "finally", "is", "try", "def", "for", "lambda", "while"])
python_Boot.prefixLength = len("_hx_")

Script.main()