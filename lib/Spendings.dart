import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Spendings extends StatefulWidget {
  const Spendings({Key? key}) : super(key: key);

  @override
  State<Spendings> createState() => _SpendingsState();
}

double _progress = 76;

class _SpendingsState extends State<Spendings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "Spendings & Budgets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: CircularSeekBar(
                  width: double.infinity,
                  height: double.infinity,
                  progress: _progress,
                  barWidth: 8,
                  startAngle: 90,
                  sweepAngle: 180,
                  strokeCap: StrokeCap.round,
                  progressGradientColors: const [
                    Colors.green,
                    Colors.deepOrange,
                    Colors.red
                  ],
                  dashWidth: 50,
                  dashGap: 15,
                  animation: true,
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\$118",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "of \$500 budget",
                            style: TextStyle(
                              color: Color.fromRGBO(162, 162, 181, 100),
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 25),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RichText(
                                    text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: 'Your spending is on track '),
                                    WidgetSpan(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Text(
                                          '👍',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.yellow),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ]),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
