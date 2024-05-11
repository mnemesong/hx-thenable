package hxThenable;

/**
	Unit, thats constructs Thenables and helps to manage them
**/
interface ThenableFactory extends MapableFactory {

	/**
		Converts unit to Thenable
	**/
	public function lift<V>( v : V ) : Thenable<V>;

	/**
		Await ready and success of all thenables and convert them values to array of
		same count, as a given array. 
	**/
	public function all<V>( all : Array<Thenable<V>> ) : Thenable<Array<V>>;

	/**
		Await ready and of all thenables and convert only success of  them values to array. 
	**/
	public function some<V>( all : Array<Thenable<V>> ) : Thenable<Array<V>>;

	/**
		Await ready of first success thenable and return its value as a thenable.
	**/
	public function any<V>( all : Array<Thenable<V>> ) : Thenable<V>;
}
