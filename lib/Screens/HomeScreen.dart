import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:learning_app/Screens/SubjectScreen.dart';
import 'package:learning_app/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello,',
                              style:
                                  TextStyle(color: primaryText, fontSize: 24),
                            ),
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: primaryText,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 85,
                          width: 85,
                          child: IconButton(
                            icon: Image.asset(
                              'assets/icons/avatarboy.png',
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SettingsPage()),
                              // );
                            },
                            color: iconGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        new StaggeredGridView.countBuilder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          itemCount: 4,
                          staggeredTileBuilder: (int index) =>
                              new StaggeredTile.count(1, getSize(index)),
                          itemBuilder: (BuildContext context, int index) =>
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SubjectScreen(subjectName: SubjectList1[index].name)));
                                  },
                                  child: SubjectCard(
                            index: index,
                            subjectList: SubjectList1,
                          )),
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                        ),
                        new StaggeredGridView.countBuilder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) =>
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SubjectScreen(subjectName: SubjectList2[index].name,)));
                                  },
                                  child: SubjectCard(
                            index: index,
                            subjectList: SubjectList2,
                          )),
                          staggeredTileBuilder: (int index) =>
                              new StaggeredTile.count(1, getSize(index)),
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  double getSize(int x) {
    double abc = 1.2;
    if (x == 0) {
      abc = 1.6;
    } else if (x == 1) {
      abc = 1.2;
    } else if (x == 2) {
      abc = 1.6;
    } else if (x == 3) {
      abc = 1.2;
    }

    return abc;
  }
}

class SubjectCard extends StatelessWidget {
  final int index;
  final List<CardClass> subjectList;

  const SubjectCard({
    Key? key,
    required this.index,
    required this.subjectList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return index == 0 || index == 2
        ? Container(
            decoration: BoxDecoration(
              color: subjectList[index].color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      subjectList[index].name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Opacity(
                      opacity: 0.7,
                      child: Image(
                        image: subjectList[index].image,
                        width: maxWidth*0.18,
                        height: maxHeight*0.18,
                      )),
                )
              ],
            ),
          )
        : Container(
            decoration: BoxDecoration(
              color: subjectList[index].color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Opacity(
                      opacity: 0.7,
                      child: Image(
                        image: subjectList[index].image,
                        width: maxWidth*0.18,
                        height: maxHeight*0.18,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,

                    child: Text(
                      subjectList[index].name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

class CardClass {
  const CardClass({
    required this.color,
    required this.name,
    required this.image,
  });

  final Color color;
  final String name;
  final ImageProvider image;
}

const List<CardClass> SubjectList1 = const <CardClass>[
  const CardClass(
      color: cardGreen,
      name: "Math",
      image: AssetImage('assets/icons/numbers.png')),
  const CardClass(
      color: cardOrange,
      name: "Science",
      image: AssetImage('assets/icons/science.png')),
  const CardClass(
      color: cardViolet,
      name: "Reading",
      image: AssetImage('assets/icons/reading.png')),
  const CardClass(
      color: cardYellow,
      name: "Writing",
      image: AssetImage('assets/icons/writing.png')),
];
const List<CardClass> SubjectList2 = const <CardClass>[
  const CardClass(
      color: cardBlue,
      name: "Grammar",
      image: AssetImage('assets/icons/grammar.png')),
  const CardClass(
      color: cardRed,
      name: "Vocabulary",
      image: AssetImage('assets/icons/book.png')),
  const CardClass(
      color: cardGreen,
      name: "Basics",
      image: AssetImage('assets/icons/basic.png')),
  const CardClass(
      color: cardOrange,
      name: "Sketch",
      image: AssetImage('assets/icons/sketch.png')),
];
