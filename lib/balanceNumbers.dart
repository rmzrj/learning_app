import 'package:flutter/material.dart';
import 'main.dart';

class BalanceNumbers extends StatefulWidget {
  const BalanceNumbers({Key? key}) : super(key: key);

  @override
  _BalanceNumbersState createState() => _BalanceNumbersState();
}

class _BalanceNumbersState extends State<BalanceNumbers>
    with TickerProviderStateMixin {
  late AnimationController controller;
  double begin = 0.0;
  double end = 0.0;
  int a= 0,b=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));

  }

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
              Container(height: 80,),
              Column(
                children: [
                  RotationTransition(turns: Tween(begin: 0.09,end: 0.0).animate(controller ),
                    child: Container(
                      width: 300,

                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                color: Colors.blue,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                color: Colors.blue,
                              ),
                            ],

                          ),
                          Container(
                            color: Colors.green,
                            width: 300,
                            height: 10,
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,

                    ),
                  ),
                ],
              ),
              Container(height: 100,),
              ElevatedButton(onPressed:()=> controller.forward(), child: Text("BALANCE NUMBERS")),
            ],
          ),
        ),
      ),
    );
  }
  check(){
    if(a>b){

    }
  }

}
