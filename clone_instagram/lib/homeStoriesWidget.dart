import 'package:flutter/material.dart';

class MyStories extends StatelessWidget {
  MyStories({super.key});

  final List storyItems = [
    {
      "pseudo": 'MonPseudo',
      "img": 'assetts/images/stories/story.jpg',
      "contour": 'assetts/images/stories/sansContour.png',
      "post" : "assets/search_publi/publi5.jpg"
    },
    {
      "pseudo": 'alice_38',
      "img": 'assetts/images/stories/story2.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi11.jpg"
    },
    {
      "pseudo": 'artemis',
      "img": 'assetts/images/stories/story3.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi19.jpg"
    },
    {
      "pseudo": 'flower.girl',
      "img": 'assetts/images/stories/story4.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi20.jpg"
    },
    {
      "pseudo": 'manontp',
      "img": 'assetts/images/stories/story5.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi2.jpg"
    },
    {
      "pseudo": 'fabienStyle',
      "img": 'assetts/images/stories/story6.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi13.jpg"
    },
    {
      "pseudo": 'guessMyName',
      "img": 'assetts/images/stories/story7.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi16.jpg"
    },
    {
      "pseudo": 'louis95',
      "img": 'assetts/images/stories/story8.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi3.jpg"
    },
    {
      "pseudo": 'photograph_73',
      "img": 'assetts/images/stories/story9.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi12.jpg"
    },
    {
      "pseudo": 'Paul_henry',
      "img": 'assetts/images/stories/story10.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/search_publi/publi17.jpg"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((e) {
            return Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius:40,
                      backgroundImage: AssetImage(e['img']),
                    ),
                    Image.asset(e['contour'], height:110),
                  ],
                ),
                Text(
                  e['pseudo'],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ]
          );
        }).toList(),
      ),
    );
  }
}

