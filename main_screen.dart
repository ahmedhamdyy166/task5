import 'package:flutter/material.dart';
import 'package:lastone/models/Pokemon.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:lastone/screen/main_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var http =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  Pokemonko pokemonko;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    var = http.get(url).then((value){
    var decodedJson = jsonDecode(res.body);
    pokemonko = Pokemonko.fromJson(decodedJson);
  }
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Poke App"),
      backgroundColor: Colors.cyan,
    ),
    body: FutureBuilder(
      future: res,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(snapshot.hasData)

          return GridView.count(
            crossAxisCount: 2,
            children: pokemonko.pokemon.map((poke) => Card()).toList(),
          ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyan,
        child: Icon(Icons.refresh),
        );
      },
    ),
  );
}