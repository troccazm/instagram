import 'package:clone_instagram/searchWidget.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  //liste contenant les images des publications dans search

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clone Instagram',
      home: Scaffold(
        backgroundColor: Colors.black,
        // barre de recherche avec l'icone loupe
        appBar: AppBar(
          backgroundColor: Colors.black,
          // barre de recherche
          title: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(10)
            ),
            width: 1000,
            child: Row(children: [
              IconButton(
                onPressed: (){}, 
                icon: const Icon(
                  Icons.search
                ),
                color: Colors.grey.shade400,
              ),
              Text('Rechercher',
                style: TextStyle(
                  color: Colors.grey.shade400,
                )
              ),
            ],),
          ),
        ),
        // grille de publications à 3 colonnes
        body: SearchWidget()
        ),
    );
  }
}