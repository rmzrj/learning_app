import 'package:flutter/material.dart';
import 'package:vkltwoeighteight/data/MCQData.dart';
class MCQPage extends StatefulWidget {
  const MCQPage({Key? key}) : super(key: key);

  @override
  _MCQPageState createState() => _MCQPageState();
}

class _MCQPageState extends State<MCQPage> {

  String selectedOption="";
  final List<MCQQuestion> allquestions = allMCQQuestions;
  final List<MCQOption> alloptions = allMCQOptions;
  bool checkPress=false;
  int qnumber=0;
  bool finalAnswer=false;
  @override
  Widget build(BuildContext context) {
    MCQQuestion question = allquestions[qnumber];
    String questionInString=question.question;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          ""
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(questionInString),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if(checkPress && finalAnswer ==true)
                    for(int i =0;i<3;i++)
                      if(selectedOption==alloptions[i].option)
                        Container(
                          child: Text(alloptions[i].option),
                          color: Colors.green,
                        )
                      else
                        Container(
                          child: Text(alloptions[i].option),
                        )
                  else if(checkPress && finalAnswer ==false)
                    for(int i =0;i<3;i++)
                      if(selectedOption==alloptions[i].option)
                        Container(
                          child: Text(alloptions[i].option),
                          color: Colors.red,
                        )

                      else if(question.option==alloptions[i].option)
                        Container(
                          child: Text(alloptions[i].option),
                          color: Colors.green,

                        )
                      else
                        Container(
                          child: Text(alloptions[i].option),

                        )






                  else
                    for(int i =0;i<3;i++)
                      if(selectedOption==alloptions[i].option)
                        GestureDetector(
                          onTap: ()=>optionPressed(alloptions[i].option),
                          child: Container(
                            child: Text(alloptions[i].option),
                            color: Colors.blue,
                          ),

                        )
                      else
                        GestureDetector(
                          onTap: ()=>optionPressed(alloptions[i].option),
                          child: Container(
                            child: Text(alloptions[i].option),
                          ),

                        )









                ],

              ),
              Container(height: 20,),
              if(checkPress)
                ElevatedButton(onPressed:()=>nextPressed(), child: Text("NEXT"))
              else
                ElevatedButton(onPressed:()=>checkPressed(question.option), child: Text("CHECK"))









            ],
          ),
        ),
      ),

    );
  }
  optionPressed(String option){
    setState(() {
      selectedOption=option;
    });

  }
  checkPressed(String answer){
    setState(() {
      checkPress=true;
      if(selectedOption==answer){
        finalAnswer=true;
      }
    });

  }

  nextPressed() {
    setState(() {
      if(qnumber<4){
        qnumber++;

      }
      else{
        qnumber=0;
      }
      checkPress=false;
      selectedOption="";
      finalAnswer=false;


    });
  }
}
