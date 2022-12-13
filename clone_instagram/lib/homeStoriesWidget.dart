import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class MyStories extends StatelessWidget {
  MyStories({super.key});

  final List storyItems = [
    {
      "pseudo": 'MonPseudo',
      "img": 'assetts/images/stories/story.jpg',
      "contour": 'assetts/images/stories/sansContour.png',
    },
    {
      "pseudo": 'alice_38',
      "img": 'assetts/images/stories/story2.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
    },
    {
      "pseudo": 'artemis',
      "img": 'assetts/images/stories/story3.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
    },
    {
      "pseudo": 'flower.girl',
      "img": 'assetts/images/stories/story4.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
    },
    {
      "pseudo": 'manontp',
      "img": 'assetts/images/stories/story5.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
    },
    {
      "pseudo": 'fabienStyle',
      "img": 'assetts/images/stories/story6.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
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
    },
    {
      "pseudo": 'photograph_73',
      "img": 'assetts/images/stories/story9.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
    },
    {
      "pseudo": 'Paul_henry',
      "img": 'assetts/images/stories/story10.jpg',
      "contour": 'assetts/images/stories/contourStory.png',
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
                          MaterialPageRoute(builder: (context) => const DisplayStory()),
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

class DisplayStory extends StatefulWidget {
  const DisplayStory({super.key});

  @override
  State<DisplayStory> createState() => _DisplayStoryState();
}

class _DisplayStoryState extends State<DisplayStory> {
  final storyController = StoryController();
  final duration = const Duration(seconds: 5);

  //creating the list of Social media Storys
  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItemsList = [
      StoryItem.pageImage(url: 'https://imgur.com/4mJciHh.jpg', controller: storyController),
      StoryItem.pageImage(url: 'https://imgur.com/e7OfQwI.jpg', controller: storyController),
      StoryItem.pageImage(url: 'https://imgur.com/wVDtzOJ.jpg', controller: storyController),
      StoryItem.pageImage(url: 'https://imgur.com/qRrSFhQ.jpg', controller: storyController),
      StoryItem.pageImage(url: 'https://imgur.com/Oq8Ov3W.jpg', controller: storyController),
      StoryItem.pageImage(url: 'https://imgur.com/cGyLEmH.jpg', controller: storyController),
      StoryItem.pageImage(url: 'https://imgur.com/cosqJ5a.jpg', controller: storyController),
      StoryItem.pageImage(url: 'https://imgur.com/bei5CM0.jpg', controller: storyController),
      StoryItem.pageImage(url: 'https://imgur.com/tusdHXP.jpg', controller: storyController),
    ]; 
    return Material(
      child: StoryView(
        storyItems: storyItemsList,
        controller: storyController,
        repeat: false,
        onComplete: () {}, 
        onVerticalSwipeComplete: (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        } 
      ),
    );
  }
}
