package;

import python.Lib;

class Script {
	
	static function main() {
		
		var president_ranks = new Map<String, Int>();
		
		president_ranks.set( "FDR", 1 );
		president_ranks.set( "Lincoln", 2 );
		president_ranks.set( "Aquaman", 3 );
		
		var fdr_rank = president_ranks.get( "FDR" );
		var lincoln_rank = president_ranks.get( "Lincoln" );
		var aquaman_rank = president_ranks.get( "Aquaman" );
		
		trace( fdr_rank );
		trace( lincoln_rank );
		trace( aquaman_rank );
	}

}