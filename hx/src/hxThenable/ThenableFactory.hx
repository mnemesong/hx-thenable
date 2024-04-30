package hxThenable;

interface ThenableFactory extends MapableFactory {
	public function lift<V>( v : V ) : Thenable<V>;
}
