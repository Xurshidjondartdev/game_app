import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///bosganda sakratuvchi funsiya
  void tepaga() async {
    x = -0.5;
    y = -0.5;
    setState(() {});
    await Future.delayed(const Duration(milliseconds: 500));
    x = -0.65;
    y = 0.25;
    setState(() {});
  }

  /////pastga funsiya
  void pastga() async {
    x = -0.5;
    y = 0.9;
    setState(() {});
    await Future.delayed(const Duration(milliseconds: 500));
    x = -0.65;
    y = 0.25;
    setState(() {});
  }

  /////orqaga funsiya
  void orqaga() async {
    x = -1;
    y = 0.9;
    setState(() {});
    await Future.delayed(const Duration(milliseconds: 500));
    x = -0.65;
    y = 0.25;
    setState(() {});
  }

  //////oldinga function
  void oldinga() async {
    x = 1;
    y = 0.9;
    setState(() {});
    await Future.delayed(const Duration(milliseconds: 500));
    x = -0.65;
    y = 0.25;
    setState(() {});
  }

  double x = -0.65;
  double y = 0.25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/fon1.gif'),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 800,
              width: 400,
              alignment: Alignment(x, y),
              child: Image.asset(
                height: 170,
                width: 220,
                'assets/images/dragon.gif',
                fit: BoxFit.cover,
                alignment: Alignment.topLeft,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                      onTap: pastga,
                      child: Container(
                          margin: const EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(blurRadius: 10, spreadRadius: 5)
                            ],
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80),
                            ),
                          ),
                          child: const Icon(
                            shadows: [
                              Shadow(
                                blurRadius: 10,
                              )
                            ],
                            Icons.arrow_downward,
                            color: Colors.white,
                          ))),
                  GestureDetector(
                      onTap: tepaga,
                      child: Container(
                          margin: const EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 10, spreadRadius: 5)
                              ],
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(80))),
                          child: const Icon(
                            shadows: [
                              Shadow(
                                blurRadius: 10,
                              )
                            ],
                            Icons.arrow_upward,
                            color: Colors.white,
                          )))
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: orqaga,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(blurRadius: 10, spreadRadius: 5)
                          ],
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                          ),
                        ),
                        child: const Icon(
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                            )
                          ],
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: oldinga,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(blurRadius: 10, spreadRadius: 5)
                          ],
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80),
                          ),
                        ),
                        child: const Icon(
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                            )
                          ],
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
