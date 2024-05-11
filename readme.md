# hx-thenable
Class represents Thenable and Mapable interfaces and factories for them

## API

### hxThenable.Mapable
```haxe
package hxThenable;

/**
	Some unit, thats possibe to map
**/
interface Mapable<V> {
	public function map<V2>( f : V -> V2 ) : Mapable<V2>;
}
```

### hxThenable.MapableFactory
```haxe
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
```

### hxThenable.Thenable
```haxe
package hxThenable;

/**
	Some unit thats possible to map and then
**/
interface Thenable<V> extends Mapable<V> {
	public function then<V2>( f : V -> Thenable<V2> ) : Thenable<V2>;
	public function map<V2>( f : V -> V2 ) : Thenable<V2>;
}
```

### hxThenable.ThenableFactory
```haxe
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
```


## Author
Anatoly Starodubtsev
tostar74@mail.ru


## License
MIT