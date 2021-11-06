import 'package:flutter/material.dart';
class LearnClock extends StatefulWidget {
  const LearnClock({Key? key}) : super(key: key);

  @override
  _LearnClockState createState() => _LearnClockState();
}

class _LearnClockState extends State<LearnClock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: <Widget>[
                    Image.asset("assets/icons/clock.png")
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
