import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:vkltwoeighteight/data/DragMCQData.dart';

class DragMCQPage extends StatefulWidget {
  const DragMCQPage({Key? key}) : super(key: key);

  @override
  _DragMCQPageState createState() => _DragMCQPageState();
}

class _DragMCQPageState extends State<DragMCQPage> {
  String draggedText = "";
  String checked="";
  final List<DragMCQQuestion> allquestions = allDragMCQQuestions;
  final List<DragMCQOption> alloptions = allDragMCQOptions;

  @override
  Widget build(BuildContext context) {
    DragMCQQuestion question = allquestions[5];
    String questionInString=question.question;
    String option1=alloptions[0].option;
    String option2=alloptions[1].option;




    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  DragTarget(
                    builder: (BuildContext context, List<Object?> candidateData,
                        List<dynamic> rejectedData) {
                      return Container(
                        color: Colors.blue,
                        height: 120,
                        width: 120,
                        child: Material(
                            type: MaterialType.transparency,
                            child: Center(
                                child: Text(
                              draggedText,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ))),
                      );
                    },
                    onAccept: (String a) {
                      setState(() {
                        draggedText = a;
                      });
                    },
                  ),
                  Container(width: 10,),
                  Container(
                    color: Colors.blue,
                    height: 120,
                    width: 250,
                    child: Material(
                        type: MaterialType.transparency,
                        child: Center(
                            child: Text(
                              questionInString,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ))),
                  )
                ],
              ),
              Container(height: 10,),

              Row(
                children: [
                  Draggable(
                    data: option1,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                      child: Center(
                          child: Text(
                        option1,
                        style: TextStyle(color: Colors.white, fontSize: 60),
                      )),
                    ),
                    feedback: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                      child: Material(
                          type: MaterialType.transparency,
                          child: Center(
                              child: Text(
                                option1,
                            style: TextStyle(color: Colors.white, fontSize: 60),
                          ))),
                    ),
                    childWhenDragging: Container(
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(width: 10,),

                  Draggable(
                    data: option2,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                      child: Center(
                          child: Text(
                            option2,
                        style: TextStyle(color: Colors.white, fontSize: 60),
                      )),
                    ),
                    feedback: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                      child: Material(
                          type: MaterialType.transparency,
                          child: Center(
                              child: Text(
                                option2,
                            style: TextStyle(color: Colors.white, fontSize: 60),
                          ))),
                    ),
                    childWhenDragging: Container(
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
              ElevatedButton(onPressed:()=> checkAnswer(draggedText,question.option), child: Text("CHECK")),

              Text(checked)
            ],
          ),
        ),
      ),
    );
  }

  checkAnswer(String selectedOption,String rightOption) {

      if(selectedOption==rightOption){
        setState(() {
          checked="THAT'S RIGHT";
        });


      }
      else{
        setState(() {
          checked="THAT'S WRONG";
        });
      }


  }
}
