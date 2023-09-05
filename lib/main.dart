// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, use_key_in_widget_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> list_praiseallah = [

    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  int counter = 0;
  int round = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            flexibleSpace: Image.asset(
              "assets/WhatsApp Image 2023-07-30 at 21.29.08.jpg",
              fit: BoxFit.cover,
            ),
            centerTitle: true,
            title: Text("فذكر إن نفعت الذكري"),
          ),
          body: Stack(
            children: [
              Image(
                image: AssetImage(
                    "assets/WhatsApp Image 2023-07-30 at 21.29.0800.jpg"),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        list_praiseallah[index],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "عدد التسبيحات",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "$counter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              increamentCounter();
                            });
                          },
                          child: Text(
                            "إضغط",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: CircleBorder(),
                              side: BorderSide(color: Colors.white, width: 4),
                              padding: EdgeInsets.all(50))),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                reset();
                              });
                            },
                            child: Text(
                              "البدء من جديد",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "$round  : رقم الدوره  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  void increamentCounter() {
    counter++;
    if (counter == 33) {
      counter = 0;
      index++;
      if (index == 3) {
        index = 0;
        round++;
      }
    }
  }

  void reset() {
    counter = 0;
    index = 0;
    round = 0;
  }
}
