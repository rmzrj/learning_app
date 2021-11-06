import 'package:flutter/material.dart';

class WordSearchPuzzle extends StatefulWidget {
  const WordSearchPuzzle({Key? key}) : super(key: key);

  @override
  _WordSearchPuzzleState createState() => _WordSearchPuzzleState();
}

class _WordSearchPuzzleState extends State<WordSearchPuzzle> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: size.width,
                color: Colors.red,
                width: double.maxFinite,
                padding: EdgeInsets.all(10),
                child: Text("Box"),
              ),
              Container(
                child: Text("List"),
                alignment: Alignment.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  void generateRandomWords() {}
}
