import 'package:flutter/material.dart';
import 'package:clone_instagram/myInfoWidget.dart';
import 'package:clone_instagram/myPubliWidget.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clone Instagram',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('MonPseudo'),
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
                Icons.dehaze
              ),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
            children: [
              const MyInfo(),
              const SizedBox(height: 30),
              MyPubli(),
            ],
          ),
        )
      ),
    );
  }
}