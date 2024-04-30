# hx-thenable
Class represents Thenable and Mapable interfaces and factories for them

## API

### hxThenable.Mapable
```haxe
package hxThenable;

interface Mapable<V> {
	public function map<V2>( f : V -> V2 ) : Mapable<V2>;
}
```

### hxThenable.MapableFactory
```haxe
package hxThenable;

interface MapableFactory {
	public function lift<V>( v : V ) : Mapable<V>;
}
```

### hxThenable.Thenable
```haxe
package hxThenable;

interface Thenable<V> extends Mapable<V> {
	public function then<V2>( f : V -> Thenable<V2> ) : Thenable<V2>;
	public function map<V2>( f : V -> V2 ) : Thenable<V2>;
}
```

### hxThenable.ThenableFactory
```haxe
package hxThenable;

interface ThenableFactory {
	public function lift<V>( v : V ) : Thenable<V>;
}
```


## Author
Anatoly Starodubtsev
tostar74@mail.ru


## License
MIT