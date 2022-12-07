import 'package:flutter/material.dart';
import 'package:clone_instagram/myPubliWidget.dart';


class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius:40,
                backgroundImage: AssetImage('assetts/images/stories/story.jpg'),
              ),
              //ajout de sizedBox pour espacer les colonnes
              const SizedBox(width:40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //on recupère la taille de la liste pour définir le nb de publications
                  Text(MyPubli().mespubli.length.toString(), 
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('Publications', style: TextStyle(color: Colors.white))
                ],
              ),
              //ajout de sizedBox pour espacer les colonnes
              const SizedBox(width: 20),
              Column(
                children: const [
                  Text('483', //choix arbitraire du nb de followers
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Followers', 
                    style: TextStyle(color:Colors.white))
                ],
              ),
              //ajout de sizedBox pour espacer les colonnes
              const SizedBox(width: 20),
              Column(
                children: const [
                  Text('467', //choix arbitraire du nb de suivi(e)s
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Suivi(e)s', style: TextStyle(color: Colors.white))
                ],
              )
            ],
          ),
          //ajout de sizedBox pour espacer les lignes
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text('Just a teeny teeny dash of blasphemy',
              style: TextStyle(color: Colors.white), 
              textAlign: TextAlign.left,),
          )
        ],
    );
  }
}