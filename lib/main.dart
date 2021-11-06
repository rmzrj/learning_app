import 'package:flutter/material.dart';
import 'package:vkltwoeighteight/digital_ink_recogniser_view.dart';
import 'package:vkltwoeighteight/dragMCQ.dart';
import 'package:vkltwoeighteight/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VKL288',

      home: HomePage(),
    );
  }
}


