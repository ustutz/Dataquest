package;

class Script {

	static function main() {
		
		var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"];
		var eight_eleven = months.slice( 8, 12 );
		var ending_index = months.length;
		
		var eight_eleven = months.slice( 8, ending_index );
		var five_nine = months.slice( 5, 10 );
		trace( five_nine );

	}
	
}