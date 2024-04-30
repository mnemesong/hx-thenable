package hxThenableTest;

class MainTest {

	public static function main() {
		var c = new ThenableContainer( 12 );
		Sure.sure( c.then( v -> new ThenableContainer( v + 2 ) ).v == 14 );
		Sure.sure( c.map( v -> v + 2 ).v == 14 );
	}
}
