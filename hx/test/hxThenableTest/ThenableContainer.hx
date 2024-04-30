package hxThenableTest;

import hxThenable.Thenable;

class ThenableContainer<V> implements Thenable<V> {

	public var v : V;

	public function new( v : V ) {
		this.v = v;
	}

	public function then<V2>( f : V -> Thenable<V2> ) : ThenableContainer<V2> {
		var result = f( this.v );
		Sure.sure( Std.string( Type.typeof( this ) ) == Std.string( Type.typeof( result ) ) );
		return cast result;
	}

	public function map<V2>( f : V -> V2 ) : ThenableContainer<V2> {
		return new ThenableContainer( f( this.v ) );
	}
}
