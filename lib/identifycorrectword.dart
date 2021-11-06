import 'package:flutter/material.dart';
import 'package:vkltwoeighteight/data/IdentifyCorrectWordData.dart';

class IdentifyCorrectWord extends StatefulWidget {
  const IdentifyCorrectWord({Key? key}) : super(key: key);

  @override
  _IdentifyCorrectWordState createState() => _IdentifyCorrectWordState();
}

class _IdentifyCorrectWordState extends State<IdentifyCorrectWord> {
  bool tappedSomething=false;
  String selectedWord="";
  String checked="";



  final List<IdentifyCorrectWordQuestion> allquestions =
      allIdentifyCorrectWordQuestions;

  @override
  Widget build(BuildContext context) {
    IdentifyCorrectWordQuestion question = allquestions[0];
    String questionInString = question.question;
    questionInString=questionInString.substring(0,(questionInString.length-1));
    List<String> questionWordsList = questionInString.split(" ");

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  for (int i = 0; i < questionWordsList.length; i++)
                    GestureDetector(
                      onTap:()=>tapped(questionWordsList[i])
                      ,
                      child: i==(questionWordsList.length-1)?selectedWord==questionWordsList[i]?Container(

                        color: Colors.blue,
                        child: Text("${questionWordsList[i]} ."),
                      ):Container(

                        child: Text("${questionWordsList[i]} ."),
                      ):selectedWord==questionWordsList[i]?Container(
                        color: Colors.blue,

                        child: Text("${questionWordsList[i]} "),
                      ):Container(

                        child: Text("${questionWordsList[i]} "),
                      ),
                    ),
                ],
              ),
              ElevatedButton(onPressed:()=> checkAnswer(selectedWord,question.answer), child: Text("CHECK")),
              Text(checked),






            ],
          ),
        ),
      ),
    );
  }

  checkAnswer(String selectedWord,String correctWord) {

    if(correctWord==selectedWord)
      setState(() {
        checked="THAT'S RIGHT";
      });
    else{
      setState(() {
        checked="THAT'S WRONG";
      });

    }


  }
  tapped(String word) {

      setState(() {
        tappedSomething=true;
        selectedWord=word;

      });




  }
}
