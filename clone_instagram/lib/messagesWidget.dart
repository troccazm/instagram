import 'package:flutter/material.dart';

class ListeMessages extends StatelessWidget {
  ListeMessages({super.key});

  final List messageslist = [
    {
      "pseudo": 'elea_c',
      "img": 'assetts/images/posts/bulles/bulle1.jpg',
      "message": "see you soon"
    },
     {
      "pseudo": 'portraitLover',
      "img": 'assetts/images/posts/bulles/bulle2.jpg',
      "message": "aha same"
    },
     {
      "pseudo": 'lison__',
      "img": 'assetts/images/posts/bulles/bulle3.jpg',
      "message": "what do U mean ?"
    },
     {
      "pseudo": 'syd_trip',
      "img": 'assetts/images/posts/bulles/bulle4.jpg',
      "message": "great"
    },
     {
      "pseudo": 'mel.tz',
      "img": 'assetts/images/posts/bulles/bulle5.jpg',
      "message": "dont worry"
    },
     {
      "pseudo": 'mathou_p',
      "img": 'assetts/images/posts/bulles/bulle6.jpg',
      "message": "here in 5"
    },
     {
      "pseudo": 'cam.cam',
      "img": 'assetts/images/posts/bulles/bulle7.jpg',
      "message": "no sorry"
    },
     {
      "pseudo": 'hln_74',
      "img": 'assetts/images/posts/bulles/bulle8.jpg',
      "message": "nice pic' sis"
    },
     {
      "pseudo": 'ornel.la',
      "img": 'assetts/images/posts/bulles/bulle9.jpg',
      "message": "at nando's"
    },
     {
      "pseudo": 'raph.pic',
      "img": 'assetts/images/posts/bulles/bulle10.jpg',
      "message": "cool"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: messageslist.map((e){
            return Container(
              padding: const EdgeInsets.symmetric(vertical:10, horizontal:10),
              child: Row(
                children: [
                  //photo de profil
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius:30,
                    backgroundImage: AssetImage(e['img']),
                  ),
                  //espace
                  const SizedBox(width: 10, ),
                  //colonne comprenant le pseudo et le dernier message
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e['pseudo'], style: const TextStyle(color: Colors.white),),
                        Text(e['message'], style: const TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                  const Spacer(),
                  //icon appareil photo
                  IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.camera_alt_outlined), 
                    color: Colors.grey,)
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}