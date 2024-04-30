package hxThenable;

interface MapableFactory {
	public function lift<V>( v : V ) : Mapable<V>;
}
