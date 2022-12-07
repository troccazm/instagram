import 'package:clone_instagram/searchScroll.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({Key? key}) : super(key: key);

  //liste contenant les images des publications dans search
  final List publi = [
    {
      "pseudo": 'deco_Lyon',
      "img": 'assetts/images/stories/story2.jpg',
      "post": 'assetts/images/search_publi/publi.jpg',
      "description": "new collection on sunday morning"
    },
    {
      "pseudo": 'lovely_trip',
      "img": 'assetts/images/stories/story.jpg',
      "post": 'assetts/images/search_publi/publi1.jpg',
      "description": "summer camp"
    },
    {
      "pseudo": 'balenciaga',
      "img": 'assetts/images/stories/story3.jpg',
      "post": 'assetts/images/search_publi/publi2.jpg',
      "description": "new sunglasses"
    },
    {
      "pseudo": 'J_photos',
      "img": 'assetts/images/stories/story4.jpg',
      "post": 'assetts/images/search_publi/publi3.jpg',
      "description": "cloudy"
    },
    {
      "pseudo": 'music_lovers',
      "img": 'assetts/images/stories/story5.jpg',
      "post": 'assetts/images/search_publi/publi4.jpg',
      "description": "Our new single Hearth out now"
    },
    {
      "pseudo": 'lovely_trip',
      "img": 'assetts/images/stories/story6.jpg',
      "post": 'assetts/images/search_publi/publi5.jpg',
      "description": "enjoying life"
    },
    {
      "pseudo": 'aliz_b',
      "img": 'assetts/images/stories/story7.jpg',
      "post": 'assetts/images/search_publi/publi6.jpg',
      "description": "live laugh love"
    },
    {
      "pseudo": 'best_places',
      "img": 'assetts/images/stories/story8.jpg',
      "post": 'assetts/images/search_publi/publi7.jpg',
      "description": "city discover"
    },
    {
      "pseudo": 'jj_paris',
      "img": 'assetts/images/stories/story9.jpg',
      "post": 'assetts/images/search_publi/publi8.jpg',
      "description": "chic street"
    },
    {
      "pseudo": 'lea.Pa',
      "img": 'assetts/images/stories/story10.jpg',
      "post": 'assetts/images/search_publi/publi9.jpg',
      "description": "taking a break"
    },
    {
      "pseudo": 'bl.wh',
      "img": 'assetts/images/posts/bulles/bulle1.jpg',
      "post": 'assetts/images/search_publi/publi10.jpg',
      "description": "syndrome de l'imposteur",
    },
    {
      "pseudo": 'belle_hd',
      "img": 'assetts/images/posts/bulles/bulle2.jpg',
      "post": 'assetts/images/search_publi/publi11.jpg',
      "description": "photoshoot for vogue"
    },
    {
      "pseudo": 'globe_trotteur',
      "img": 'assetts/images/posts/bulles/bulle3.jpg',
      "post": 'assetts/images/search_publi/publi12.jpg',
      "description": "Paris by night"
    },
    {
      "pseudo": 'f_gerald',
      "img": 'assetts/images/posts/bulles/bulle4.jpg',
      "post": 'assetts/images/search_publi/publi13.jpg',
      "description": "Nice colorful stone"
    },
    {
      "pseudo": 'tom_felt',
      "img": 'assetts/images/posts/bulles/bulle5.jpg',
      "post": 'assetts/images/search_publi/publi14.jpg',
      "description": "HP is always a good choice for a date night"
    },
    {
      "pseudo": 'lou-ann',
      "img": 'assetts/images/posts/bulles/bulle6.jpg',
      "post": 'assetts/images/search_publi/publi15.jpg',
      "description": ""
    },
    {
      "pseudo": 'larry_sty',
      "img": 'assetts/images/posts/bulles/bulle7.jpg',
      "post": 'assetts/images/search_publi/publi16.jpg',
      "description": "higher"
    },
    {
      "pseudo": 'art_pic',
      "img": 'assetts/images/posts/bulles/bulle8.jpg',
      "post": 'assetts/images/search_publi/publi17.jpg',
      "description": "broken mind"
    },
    {
      "pseudo": 'pizza_guy',
      "img": 'assetts/images/posts/bulles/bulle9.jpg',
      "post": 'assetts/images/search_publi/publi18.jpg',
      "description": "Marguerita or royal ?"
    },
    {
      "pseudo": 'proud_love',
      "img": 'assetts/images/posts/bulles/bulle1.jpg',
      "post": 'assetts/images/search_publi/publi19.jpg',
      "description": "freedom"
    },
    {
      "pseudo": 'bnb_LR',
      "img": 'assetts/images/search_publi/publi20.jpg',
      "post": 'assetts/images/search_publi/publi20.jpg',
      "description": "come and discover our beautiful landscape"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
            primary: false,
            crossAxisCount: 3, //nb de colonnes
            // récupération des images dans la liste
            children: publi.map((e) {
              return Container(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScroll()),
                    );
                  }),
                child: Image.asset(e['post'], fit:BoxFit.fill),
                ),
              );
            }).toList(),
        
    );
  }
}