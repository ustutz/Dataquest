class Script:

	@staticmethod
	def main():
		president_ranks = haxe_ds_StringMap()
		president_ranks.h["FDR"] = 1
		president_ranks.h["Lincoln"] = 2
		president_ranks.h["Aquaman"] = 3
		fdr_rank = president_ranks.h.get("FDR",None)
		lincoln_rank = president_ranks.h.get("Lincoln",None)
		aquaman_rank = president_ranks.h.get("Aquaman",None)
		print(str(fdr_rank))
		print(str(lincoln_rank))
		print(str(aquaman_rank))


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