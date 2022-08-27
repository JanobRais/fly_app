import 'package:flutter/material.dart';
import 'package:fly_app/airplane.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(59, 148, 212, 1),
                      Color.fromRGBO(93, 169, 224, 0.71),
                    ],
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                        "images/ava.png",
                        height: 300,
                      )),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Lets Enjoy A New",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                  Text(
                    "World",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Search the safest destination",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  // Container(
                  //   width: 338,
                  //   height: 67,
                  //   child: Center(child: Text("Get started", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),)),
                  //   decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(20),
                  //       color: Color.fromRGBO(35, 109, 163, 1)),
                  // )
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AirplaneScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          primary: Color.fromRGBO(35, 109, 163, 1),
                          padding: EdgeInsets.symmetric(horizontal: 140, vertical: 20)
                      ),
                      child: Text("Get started",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white)))
                ],
              ),
            )));
  }
}
