import 'package:flutter/material.dart';
class DragGroupPage extends StatefulWidget {
  const DragGroupPage({Key? key}) : super(key: key);

  @override
  _DragGroupPageState createState() => _DragGroupPageState();
}

class _DragGroupPageState extends State<DragGroupPage> {
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


            ],
          ),
        ),
      ),

    );
  }
}
