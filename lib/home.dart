import 'package:flutter/material.dart';
import 'package:vkltwoeighteight/DragGroupPage.dart';
import 'package:vkltwoeighteight/balanceNumbers.dart';
import 'package:vkltwoeighteight/digital_ink_recogniser_view.dart';
import 'package:vkltwoeighteight/dragMCQ.dart';
import 'package:vkltwoeighteight/identifycorrectword.dart';
import 'package:vkltwoeighteight/learnClock.dart';
import 'package:vkltwoeighteight/mcqPage.dart';
import 'package:vkltwoeighteight/speechRecognizer.dart';
import 'package:vkltwoeighteight/wordSearchPuzzle.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DragMCQPage())), child: Text("DRAG MCQ")),

              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DigitalInkView())), child: Text("TRACE")),
              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          IdentifyCorrectWord())), child: Text("IDENTIFY CORRECT WORD")),
              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DragGroupPage())), child: Text("DRAG GROUP")),
              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BalanceNumbers())), child: Text("BALANCE NUMBERS")),
              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MCQPage())), child: Text("MCQ")),
              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SpeechRecognizer())), child: Text("SPEECH RECOGNIZER")),
              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WordSearchPuzzle())), child: Text("WORD SEARCH")),
              ElevatedButton(onPressed:()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LearnClock())), child: Text("LEARN CLOCK")),


            ],

          ),
        ),
      ),
    );
  }
}
