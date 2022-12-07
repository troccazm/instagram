import 'package:clone_instagram/myPubliScroll.dart';
import 'package:flutter/material.dart';

class MyPubli extends StatelessWidget {
  MyPubli({super.key});

  //liste des images des publications dans search
  final List mespubli = [
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile2.jpg',
      "description": "Autumn"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile3.jpg',
      "description": "black and white"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile4.jpg',
      "description": "Paris at 7am"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile5.jpg',
      "description": "sea sun and fun"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile6.jpg',
      "description": ""
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile7.jpg',
      "description": "Sweet home"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile8.jpg',
      "description": "Nature"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile9.jpg',
      "description": ""
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile10.jpg',
      "description": "Mornin'"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile11.jpg',
      "description": "silent memories"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile12.jpg',
      "description": "Colorful"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile13.jpg',
      "description": "1 year with love"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile14.jpg',
      "description": "always green"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile15.jpg',
      "description": "everyone is a piece of art"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile16.jpg',
      "description": "Romantic diner"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile17.jpg',
      "description": "Home sweet home"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile18.jpg',
      "description": "Powerfull"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile19.jpg',
      "description": "Alicante"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile20.jpg',
      "description": "morning view"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile21.jpg',
      "description": "outfit of the day"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile22.jpg',
      "description": "Isn't he lovely ?"
    },
    {
      "pseudo": 'mon_pseudo',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/profile/profile23.jpg',
      "description": "Beautiful landscape"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded( 
      child: GridView.count(
        crossAxisCount: 3, // grille à 3 colonnes
        scrollDirection: Axis.vertical,
        children: mespubli.map((e) {
          return Container(
            padding: const EdgeInsets.all(1),
            child: InkWell(
              onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyPubliScroll()),
                  );
              }),
              child: Image.asset(e['post'], fit:BoxFit.fill),
            ),
          );
        }).toList(),
      ),
    ); 
  }
}