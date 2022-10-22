import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  var _imageApp = AssetImage("images/default.png");
  var _message = "Choose your move:";

  _SelectedOption(String SelectedUserOption){

    var options = ["paper", "rock", "scissor"];
    var number = Random().nextInt(3);
    var appChoice = options[number];

    //display of the image chosen by the app
    switch(appChoice){
      case "paper":
        setState(() {
          this._imageApp = AssetImage("images/paper.png");
        });
        break;

      case "rock":
        setState(() {
          this._imageApp = AssetImage("images/rock.png");
        });
        break;

      case "scissor":
        setState(() {
          this._imageApp = AssetImage("images/scissor.png");
        });
        break;
    }

    //Winner check
    //user wins
    if(
        (SelectedUserOption == "rock" && appChoice == "scissor") ||
        (SelectedUserOption == "scissor" && appChoice == "paper") ||
        (SelectedUserOption == "paper" && appChoice == "rock")
    ){
      setState(() {
        this._message = "Congratulations!! You won!";
      });
    //app wins
    }else if(
        (SelectedUserOption == "rock" && appChoice == "paper") ||
        (SelectedUserOption == "scissor" && appChoice == "rock") ||
        (SelectedUserOption == "paper" && appChoice == "scissor")
    ){
      setState(() {
        this._message = "You lost. Can machine thinks?";
      });
    }else{
      this._message = "Until you're not so bad... tie!";
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("JokenPo"),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
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
              Image(
                image: this._imageApp,
                width: 125,
              ),


              //3) text resulted
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  this._message,
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
                  GestureDetector(
                    onTap: () => _SelectedOption("paper"),
                    child: Image.asset(
                      "images/paper.png",
                      width: 100,
                    ),
                  ),

                  GestureDetector(
                    onTap: () => _SelectedOption("rock"),
                    child: Image.asset(
                      "images/rock.png",
                      width: 100,
                    ),
                  ),

                  GestureDetector(
                    onTap: () => _SelectedOption("scissor"),
                    child: Image.asset(
                      "images/scissor.png",
                      width: 100,
                    ),
                  ),
                ],
              ),


              //5) Naruto's reference
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Good Luck!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),



                  Container(
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    color: Colors.deepOrangeAccent,
                    child: Image.asset("images/jokenpo.gif"),
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
