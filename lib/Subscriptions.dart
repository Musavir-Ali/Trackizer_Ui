import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Subs extends StatefulWidget {
  const Subs({Key? key}) : super(key: key);

  @override
  _SubsState createState() => _SubsState();
}

class _SubsState extends State<Subs> {
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  double _progress = 76;
  double _startAngle = 45;
  double _sweepAngle = 270;
  double _dashWidth = 0;
  double _dashGap = 0;
  double _barWidth = 8.0;
  bool _useGradient = true;
  bool _rounded = true;
  bool _animation = true;
  bool _thumbVisible = true;
  bool _interactive = true;

  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                color: Color.fromARGB(255, 31, 30, 30),
                child: Stack(
                  children: [
                    Center(
                        child: CircularSeekBar(
                      width: double.infinity,
                      trackColor: Colors.grey,
                      outerThumbColor: const Color(0xFF83839C),
                      height: 240,
                      progress: _progress,
                      barWidth: 15,
                      startAngle: 45,
                      sweepAngle: 270,
                      strokeCap: StrokeCap.round,
                      progressGradientColors: const [
                        Colors.green,
                        Colors.deepOrange,
                      ],
                      dashWidth: 1,
                      dashGap: 2,
                      animation: true,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.1),
                            Image.asset(
                              "assets/images/logo.png",
                              width: 100,
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            const SizedBox(
                              child: Text(
                                "\$118",
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            const SizedBox(
                              child: Text(
                                "This month bills",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color(0xFF83839C),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            SizedBox(
                                child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Pay Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF83839C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.49,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 80,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 31, 30, 30),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF83839C),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Active Subs",
                                  style: TextStyle(
                                    color: const Color(0xFF83839C),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "3",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 31, 30, 30),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF83839C),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Highest Sub",
                                  style: TextStyle(
                                    color: const Color(0xFF83839C),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "\$69.99",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 31, 30, 30),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF83839C),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lowest Sub",
                                  style: TextStyle(
                                    color: const Color(0xFF83839C),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "\$52.99",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                color: Color.fromARGB(255, 31, 30, 30),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const TabBar(
                                  indicatorColor: Colors.white,
                                  labelColor: Colors.white,
                                  dividerColor: Colors.transparent,
                                  tabs: [
                                    Tab(
                                      text: "Subscriptions",
                                    ),
                                    Tab(
                                      text: "Upcooming Bills",
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
