package hxThenable;

/**
	Some unit thats possible to map and then
**/
interface Thenable<V> extends Mapable<V> {
	public function then<V2>( f : V -> Thenable<V2> ) : Thenable<V2>;
	public function map<V2>( f : V -> V2 ) : Thenable<V2>;
}
