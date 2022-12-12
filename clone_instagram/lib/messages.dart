import 'package:clone_instagram/home.dart';
import 'package:clone_instagram/main.dart';
import 'package:clone_instagram/messagesWidget.dart';
import 'package:flutter/material.dart';

class MyMessages extends StatelessWidget {
  const MyMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clone Instagram',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          //icon back 
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: title,)),
              );
            },
          ),
          //mon pseudo
          title: const Text('MonPseudo', style: TextStyle(color: Colors.white)),
          //icon modifier
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.edit
              ),
            ),
          ],
        ),
        body: Column(
          children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: 
                  Row(
                    children: [
                      //barre de recherche
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width:360,
                        height: 30,
                        color: Colors.grey.shade800,
                        child: Align(
                          alignment: Alignment.centerLeft, // Align however you like (i.e .centerRight, centerLeft)
                          child: Text(
                            "Rechercher", 
                            style: TextStyle(color: Colors.grey.shade400),),
                        ),
                      ),
                      //icon loupe de recherche
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(
                          Icons.search
                        ),
                        color: Colors.white,
                      ),
                    ],
                  )
              ),
              ListeMessages(),
          ]
        ),
      ),
    );
  }
}