package;

class Script {

	static function main() {
		
       var three_rows = ["Albuquerque,749", "Anaheim,371", "Anchorage,828"];
        var final_list = [];
        
        for( row in three_rows ) {
            var split_list = row.split(',');
        	final_list.push( split_list );
        }
		
    	trace( final_list );
    	trace( final_list[0] );
    	trace( final_list[1] );
    	trace( final_list[2] );
	}
	
}