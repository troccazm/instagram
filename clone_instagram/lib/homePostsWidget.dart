import 'package:flutter/material.dart';
import 'package:insta_like_button/insta_like_button.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  /*postScroll(List l){
    return SingleChildScrollView(
      child: Column(
        children: l.map((e) {
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
                          isLiked=!isLiked;
                        },
                      ),
                      // icon d'interaction (like / comment)
                      Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              setState(){
                                isLiked=!isLiked;
                              }
                            }, 
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
    );
  }*/
  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {

  late bool isLiked = false;

  // liste des posts (contient le pseudo, la photo de profil, 
  final List postsItems = [
    {
      "pseudo": 'elea_c',
      "img": 'assetts/images/posts/bulles/bulle1.jpg',
      "post": 'assetts/images/posts/post.jpg',
      "description": "great view from Mauritius"
    },
     {
      "pseudo": 'portraitLover',
      "img": 'assetts/images/posts/bulles/bulle2.jpg',
      "post": 'assetts/images/posts/post1.jpg',
      "description": "Life is a photoshoot"
    },
     {
      "pseudo": 'lison__',
      "img": 'assetts/images/posts/bulles/bulle3.jpg',
      "post": 'assetts/images/posts/post2.jpg',
      "description": "memory from last month"
    },
     {
      "pseudo": 'syd_trip',
      "img": 'assetts/images/posts/bulles/bulle4.jpg',
      "post": 'assetts/images/posts/post4.jpg',
      "description": ""
    },
     {
      "pseudo": 'mel.tz',
      "img": 'assetts/images/posts/bulles/bulle5.jpg',
      "post": 'assetts/images/posts/post3.jpg',
      "description": "be your own inspiration"
    },
     {
      "pseudo": 'mathou_p',
      "img": 'assetts/images/posts/bulles/bulle6.jpg',
      "post": 'assetts/images/posts/post5.jpg',
      "description": "bestie"
    },
     {
      "pseudo": 'cam.cam',
      "img": 'assetts/images/posts/bulles/bulle7.jpg',
      "post": 'assetts/images/posts/post6.jpg',
      "description": "good laught"
    },
     {
      "pseudo": 'hln_74',
      "img": 'assetts/images/posts/bulles/bulle8.jpg',
      "post": 'assetts/images/posts/post7.jpg',
      "description": "One year with you"
    },
     {
      "pseudo": 'ornel.la',
      "img": 'assetts/images/posts/bulles/bulle9.jpg',
      "post": 'assetts/images/posts/post8.jpg',
      "description": "Lago di Braie :)"
    },
     {
      "pseudo": 'raph.pic',
      "img": 'assetts/images/posts/bulles/bulle10.jpg',
      "post": 'assetts/images/posts/post9.jpg',
      "description": "nature in kenya"
    },

  ];

  @override
  Widget build(BuildContext context) {

    // page verticalement scrollable
    //return Posts().postScroll(postsItems);
    return SingleChildScrollView(
      child: Column(
        children: postsItems.map((e) {
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
    );
  }
 //}
}