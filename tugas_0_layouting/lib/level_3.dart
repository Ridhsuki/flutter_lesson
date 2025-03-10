import 'package:flutter/material.dart';

//? BreakDown Level 3

void main() {
  runApp(Level3());
}

class Level3 extends StatelessWidget {
  const Level3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Level 3'),
          leading: Icon(Icons.menu),
          backgroundColor: Colors.cyan,
          actions: [
            Icon(Icons.person_sharp),
          ],
        ),
        body:
         SingleChildScrollView(
          child :Column(
            spacing: 10,
            children: [
              SizedBox(
                height: 12,
              ),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(width: 5, color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(width: 5, color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(width: 5, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: 4, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 20,
                      children: [
                        Container(
                          width: 110,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(width: 5, color: Colors.black),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(width: 5, color: Colors.black),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(width: 5, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 450,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: 4, color: Colors.black)),
                    child: Column(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              width: 110,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                border:
                                    Border.all(width: 5, color: Colors.black),
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                border:
                                    Border.all(width: 5, color: Colors.black),
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                border:
                                    Border.all(width: 5, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              width: 110,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                border:
                                    Border.all(width: 5, color: Colors.black),
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                border:
                                    Border.all(width: 5, color: Colors.black),
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                border:
                                    Border.all(width: 5, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
