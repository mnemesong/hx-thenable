package hxThenable;

interface Mapable<V> {
	public function map<V2>( f : V -> V2 ) : Mapable<V2>;
}
