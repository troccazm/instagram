import 'package:clone_instagram/search.dart';
import 'package:clone_instagram/searchWidget.dart';
import 'package:flutter/material.dart';
//import 'homePostsWidget.dart';
import 'package:insta_like_button/insta_like_button.dart';


class SearchScroll extends StatefulWidget {
  const SearchScroll({super.key});

  @override
  State<SearchScroll> createState() => _SearchScrollState();
}

class _SearchScrollState extends State<SearchScroll> {
  //final Posts _myPost = Posts();
  late bool isLiked = false;
  var publi = SearchWidget().publi;

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
        body: 
          //Container(
            //child: _myPost.postScroll(SearchWidget().publi)
        //),
        SingleChildScrollView(
          child: Column(
            children: publi.map((e) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    // première ligne contenant la photo de profil et le nom
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child:Row(
                        children: [
                          //photo de profil
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius:20,
                            backgroundImage: AssetImage(e['img']),
                          ),
                          //espace
                          const SizedBox(width: 10, ),
                          //pseudo
                          Text(
                            e['pseudo'],
                            style: const TextStyle(color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                    // photo postee et interaction (like / comment)
                    Column(
                        children: [
                          // photo postee
                          InstaLikeButton(
                            image: AssetImage(e['post']),
                            onChanged: () {
                              setState(() {
                                isLiked=!isLiked;
                              });
                            },
                          ),
                          // icon d'interaction (like / comment)
                          Row(
                            children: [
                              IconButton(
                                onPressed: (){}, 
                                icon: isLiked ? const Icon(Icons.favorite, color: Colors.red,)
                                : const Icon(Icons.favorite_outline, color: Colors.white,), 
                              ),
                              IconButton(
                                onPressed: (){}, 
                                icon: const Icon(
                                  Icons.comment_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(), //permet de mettre le plus d'espace possible
                              IconButton(
                                onPressed: (){}, 
                                icon: const Icon(
                                  Icons.bookmark_outline,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    // aimé par ..
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal:10, vertical:5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius:10,
                            backgroundImage: AssetImage(e['img']),
                          ),
                          const SizedBox(width:10),
                          // utilisation d'un RichText afin de modifier les propriétes de style
                          // ici mettre en gras une partie du texte
                          RichText(
                            text: const TextSpan(
                              text: 'Aimé par ',
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                  text: 'ami ',
                                  style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)
                                ),
                                TextSpan(
                                  text: 'et ',
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextSpan(
                                  text: '110 autres personnes',
                                  style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)
                                )
                              ]
                            ),
                          )
                        ],
                      ),
                    ),  
                    // description
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical:5),
                      child: 
                          Row(
                            children: [
                            // condition : si la description est vide on n'affiche pas le pseudo
                            Text(
                              e['description'].isEmpty
                              ? ''
                              : e['pseudo']+ "  ",
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              e['description'].isEmpty
                              ? ''
                              : e['description'],
                              style: const TextStyle(color: Colors.white),                          
                              ),
                          ],)
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical:10),
                      child: Row(
                        children: const [
                          Text(
                            'voir les 28 commentaires',
                            style: TextStyle(color: Colors.grey,),
                          ),
                        ],
                      ) 
                    ),
                  ],
                )
              );
            }).toList(),
          ),
        )
      ),
    );
  }
}