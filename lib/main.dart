import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vehicle Information",
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 28),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.purple.shade200],
                    begin: Alignment.topCenter),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Dashboard",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.yellow,
                          child: Icon(
                            Icons.person,
                            size: 45,
                            color: Colors.green[500],
                          )),
                    ],
                  ),
                  const Text(
                    "Hello,\nLorem Ipsom",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    shadowColor: Colors.purple,
                    elevation: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      height: 230,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.purple.shade100],
                            begin: Alignment.centerRight),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Today's Task",
                                      style: TextStyle(
                                          color: Colors.purple[800],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 7),
                                          margin:
                                              const EdgeInsetsDirectional.only(
                                                  end: 8),
                                          decoration: BoxDecoration(
                                              color: Colors.purple[800],
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: const Text(
                                            "3/4",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          "task done",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "You have done your 3 \ntodays task 1 left",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                CircularPercentIndicator(
                                  animateFromLastPercent: true,
                                  lineWidth: 16,
                                  percent: 0.75,
                                  radius: 50,
                                  center: const Text("75%"),
                                  backgroundColor: Colors.transparent,
                                  progressColor: Colors.purple[800],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 14),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(24),
                                ),
                                color: Colors.purple[800],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 20),
                              child: const Text(
                                "All Task",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "This week collection",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            color: Colors.deepPurple),
                        child: const Text(
                          " ₹13000.75",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    tween: Tween<double>(
                      begin: 0,
                      end: 0.7,
                    ),
                    builder: (context, value, _) =>
                        LinearProgressIndicator(value: value),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 5),
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.deepPurple, width: 2),
                        color: Colors.purple.shade100),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  Select vehicle",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Icon(
                          Icons.navigate_next,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "   Last transaction with",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.deepPurple,
                        child: Text(
                          "K",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.deepPurple,
                        child: Text(
                          "A",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.deepPurple,
                        child: Text(
                          "R",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.deepPurple,
                        child: Text(
                          "W",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.deepPurple,
                        child: Text(
                          "V",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
