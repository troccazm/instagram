import 'package:clone_instagram/search.dart';
import 'package:clone_instagram/searchWidget.dart';
import 'package:flutter/material.dart';
import 'homePostsWidget.dart';

class SearchScroll extends StatelessWidget {
  SearchScroll({super.key});

  final Posts _myPost = Posts();

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
                MaterialPageRoute(builder: (context) => const SearchBar()),
              );
            },
          ),
          title: const Text("Explorer", style: TextStyle(color:Colors.white),),
        ),
        body: Container(
            child: _myPost.postScroll(SearchWidget().publi)
        ),
      ),
    );
  }
}