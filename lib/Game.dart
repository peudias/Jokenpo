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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              //1) text
              Text(
                "App's choose:",
                style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),

              //2) app's choose image
              Image.asset(
                "images/default.png",
                width: 100,
              ),

              //3) text resulted
              Text(
                "You loose!",
                style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),

              //4) 3 images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ),
      ),
    );
  }
}
