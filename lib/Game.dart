import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

        //1) text
        Padding(
          padding: EdgeInsets.only(top: 32, bottom: 16),
          child: Text(
            "App's choice:",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black
            ),
          ),
        ),


        //2) app's choose image
        Image.asset(
          "images/default.png",
          width: 125,
        ),


        //3) text resulted
        Padding(
          padding: EdgeInsets.only(top: 32, bottom: 16),
          child: Text(
            "Choose your move:",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black
            ),
          ),
        ),


        //4) 3 images (paper, rock and scissor)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "images/paper.png",
              width: 100,
            ),
            Image.asset(
              "images/rock.png",
              width: 100,
            ),
            Image.asset(
              "images/scissor.png",
              width: 100,
            ),
          ],
        ),


        ],
      ),
    );
  }
}
