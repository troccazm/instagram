import 'package:flutter/material.dart';

class MyStories extends StatelessWidget {
  MyStories({super.key});

  final List storyItems = [
    {
      "pseudo": 'MonPseudo',
      "img": 'assetts/images/stories/story.jpg',
      "contour": 'assetts/images/stories/sansContour.png',
      "post" : "assets/images/stories/display/1.jpg"
    },
    {
      "pseudo": 'alice_38',
      "img": 'assetts/images/stories/story2.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/1.jpg"
    },
    {
      "pseudo": 'artemis',
      "img": 'assetts/images/stories/story3.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/2.jpg"
    },
    {
      "pseudo": 'flower.girl',
      "img": 'assetts/images/stories/story4.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/3.jpg"
    },
    {
      "pseudo": 'manontp',
      "img": 'assetts/images/stories/story5.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/4.jpg"
    },
    {
      "pseudo": 'fabienStyle',
      "img": 'assetts/images/stories/story6.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/5.jpg"
    },
    {
      "pseudo": 'guessMyName',
      "img": 'assetts/images/stories/story7.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/6.jpg"
    },
    {
      "pseudo": 'louis95',
      "img": 'assetts/images/stories/story8.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/7.jpg"
    },
    {
      "pseudo": 'photograph_73',
      "img": 'assetts/images/stories/story9.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/8.jpg"
    },
    {
      "pseudo": 'Paul_henry',
      "img": 'assetts/images/stories/story10.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
      "post" : "assets/images/stories/display/9.jpg"
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DisplayStory(url: e['post'])),
                        );
                      },
                      child: Image.asset(e['contour'], height:110)
                      ),
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

class DisplayStory extends StatelessWidget {
  const DisplayStory({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset(url)
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
