class Script:

	@staticmethod
	def main():
		president_ranks = dict()
		president_ranks["FDR"] = 1
		president_ranks["Lincoln"] = 2
		president_ranks["Aquaman"] = 3
		fdr_rank = president_ranks.get("FDR")
		lincoln_rank = president_ranks.get("Lincoln")
		aquaman_rank = president_ranks.get("Aquaman")
		print(str(fdr_rank))
		print(str(lincoln_rank))
		print(str(aquaman_rank))



Script.main()