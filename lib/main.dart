import 'package:flutter/material.dart';

//import 'package:flutter_pokiomon_app/resourses/colors.dart';
import 'package:flutter_pokiomon_app/secondlist.dart';




void main() {
  runApp( const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(
       
        body:  GridView.builder(
	gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
	  crossAxisSpacing: 3,
	  mainAxisSpacing: 2,
	  crossAxisCount: 2,
	),
	itemCount: _items.length,
	itemBuilder: (context, index) {return
	  MyWidget(index: index,items: _items,);
	},
),
    ),);
  }
}
final List<NamePokeandPhotos> _items =[
  NamePokeandPhotos('Bulbasaur', 'images/animal_10701979.png'),
  NamePokeandPhotos('Ivysaur', 'images/animal_15137272.png'),
  NamePokeandPhotos('enusaur', 'images/animals_14822618.png'),
  NamePokeandPhotos('Charmander', 'images/avatar_1752660.png'),
  NamePokeandPhotos('Charmeleon', 'images/avatar_1752670.png'),
  NamePokeandPhotos('Charizard', 'images/big_15143052.png'),
  NamePokeandPhotos('quirtle', 'images/fruit_12716894.png'),
  NamePokeandPhotos('Wartortle', 'images/game_14079512.png'),
  NamePokeandPhotos('Blastoise', 'images/medical-mask_3242662.png'),
  NamePokeandPhotos('Caterpie', 'images/monster_1236183.png'),


];
class NamePokeandPhotos {
  final String name;
  final String photo;
  NamePokeandPhotos(this.name, this.photo);
}