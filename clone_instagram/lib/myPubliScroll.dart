import 'package:clone_instagram/myProfile.dart';
import 'package:flutter/material.dart';
import 'homePostsWidget.dart';
import 'myPubliWidget.dart';


class MyPubliScroll extends StatelessWidget {
  MyPubliScroll({super.key});

  final Posts _myPosts = Posts();

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clone Instagram',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfile()),
              );
            },
          ),
          title: Column(
            children: const [
              Text("MON_PSEUDO", style: TextStyle(color:Colors.grey),),
              Text("Publications", style: TextStyle(color:Colors.white))
            ],
          )
        ),
        body: Container(
            child: _myPosts.postScroll(MyPubli().mespubli)
        ),
      ),
    );
  }
}