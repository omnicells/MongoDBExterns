# Haxe Externs for mongodb

Generated from **[@types/mongodb v3.5.34](https://github.com/DefinitelyTyped/DefinitelyTyped#readme)** by **[dts2hx](https://github.com/haxiomic/dts2hx) 0.15.3** using **TypeScript 3.7.4** with arguments:

	dts2hx mongodb

## Dependencies
- node
- bson

## Contributors to @types/mongodb
- [Federico Caselli](https://github.com/CaselIT)
- [Alan Marcell](https://github.com/alanmarcell)
- [Gaurav Lahoti](https://github.com/dante-101)
- [Mariano Cortesi](https://github.com/mcortesi)
- [Enrico Picci](https://github.com/EnricoPicci)
- [Alexander Christie](https://github.com/AJCStriker)
- [Julien Chaumond](https://github.com/julien-c)
- [Dan Aprahamian](https://github.com/daprahamian)
- [Denys Bushulyak](https://github.com/denys-bushulyak)
- [Bastien Arata](https://github.com/BastienAr)
- [Wan Bachtiar](https://github.com/sindbach)
- [Geraldine Lemeur](https://github.com/geraldinelemeur)
- [Dominik Heigl](https://github.com/various89)
- [Angela-1](https://github.com/angela-1)
- [Hector Ribes](https://github.com/hector7)
- [Florian Richter](https://github.com/floric)
- [Erik Christensen](https://github.com/erikc5000)
- [Nick Zahn](https://github.com/Manc)
- [Jarom Loveridge](https://github.com/jloveridge)
- [Luis Pais](https://github.com/ranguna)
- [Hossein Saniei](https://github.com/HosseinAgha)
- [Alberto Silva](https://github.com/albertossilva)
- [Piotr Błażejewicz](https://github.com/peterblazejewicz)
- [Linus Unnebäck](https://github.com/LinusU)
- [Richard Bateman](https://github.com/taxilian)
- [Igor Strebezhev](https://github.com/xamgore)
- [Valentin Agachi](https://github.com/avaly)
- [HitkoDev](https://github.com/HitkoDev)
- [TJT](https://github.com/Celend)
- [Julien TASSIN](https://github.com/jtassin)
- [Anna Henningsen](https://github.com/addaleax)
## Usage
```Haxe
class Main
{
	public static var url = 'mongodb://127.0.0.1:27017';
	public static var database = 'Database';
   	public static var collection = 'Collection';

    	static function main() {
		Mongodb.connect(url, function(error, client) {
			if(error != null) {
				trace('Failed to connect to $url'); 
				Sys.exit(null); 
			} else {
				var db = client.db(database);
				db.createCollection(collection, function(error, response) {
				if (error != null) {
					trace("Could not create collection"); 
				} else {
					trace('Created $collection on database $database')
				}
			}
			});
			trace('connected to MongoDB server at $url'); 
			client.close();
		}
		});
}
```
