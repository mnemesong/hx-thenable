package hxThenable;

/**
	Unit, thats constructs Mappables
**/
interface MapableFactory {

	/**
		Converts unit to Mappable
	**/
	public function lift<V>( v : V ) : Mapable<V>;
}
