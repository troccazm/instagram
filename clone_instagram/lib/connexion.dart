import 'package:clone_instagram/main.dart';
import 'package:flutter/material.dart';

class Connexion extends StatelessWidget {
  const Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset('assetts/images/instagram_logo.jpg', height: 65,)
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical:10),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade800
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Nom d'utilisateur ou email",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                style: const TextStyle(color: Colors.white) 
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade800
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Mot de passe",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  )
                ),
                style: const TextStyle(color: Colors.white) 
              ),
            ),
            const SizedBox(height: 40,),
            TextButton(
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: title,)),
                );
              }, 
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black), 
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )
                )
              ),
              child: const Text('Connexion'),  
            ),
            const SizedBox(height: 10,),
            TextButton(
              onPressed: (){}, 
              child: const Text("S'inscrire"),
            )
          ],
        ),
      )
    );
  }
}
