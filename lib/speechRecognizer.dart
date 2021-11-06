import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechRecognizer extends StatefulWidget {
  const SpeechRecognizer({Key? key}) : super(key: key);

  @override
  _SpeechRecognizerState createState() => _SpeechRecognizerState();
}

class _SpeechRecognizerState extends State<SpeechRecognizer> {
  stt.SpeechToText speech = stt.SpeechToText();
  bool isListening = false;
  double confidence = 1.0;
  String ball = "hippo";
  String rec ="";
  String text = 'Press the button and start speaking';


  @override
  Widget build(BuildContext context) {
    speech=stt.SpeechToText();
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton(
        onPressed: listen,
        child: Icon(isListening ? Icons.mic : Icons.mic_none),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(text),
              Text(rec),
            ],
          ),
        ),
      ),
    );
  }
  void listen() async {
    if (!isListening) {
      bool available = await speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => isListening = true);
        speech.listen(
          onResult: (val) => setState(() {
            rec=val.recognizedWords.toUpperCase();

            if(val.recognizedWords.contains(new RegExp(ball, caseSensitive: false))){
              text = "THAT'S RIGHT";

            }
            else{
              text = "THAT'S WRONG";

            }
            if (val.hasConfidenceRating && val.confidence > 0) {
              confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => isListening = false);
      speech.stop();
    }
  }
}
