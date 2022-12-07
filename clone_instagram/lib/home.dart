import 'package:flutter/material.dart';
import 'package:clone_instagram/homeStoriesWidget.dart';
import 'package:clone_instagram/homePostsWidget.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clone Instagram',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset('assetts/images/instagram_logo.jpg', height: 65,),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.add_to_photos
              ),
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.favorite
              ),
            ),
            IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyMessages()),
                );
              }, 
              icon: const Icon(
                Icons.send
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child:Column(
              children: [
                MyStories(),
                Posts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}