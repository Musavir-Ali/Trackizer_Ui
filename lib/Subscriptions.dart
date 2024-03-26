import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
    return Scaffold(
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
                    height: 250,
                    progress: _progress,
                    barWidth: 15,
                    startAngle: 45,
                    sweepAngle: 270,
                    strokeCap: StrokeCap.butt,
                    progressGradientColors: const [
                      Colors.green,
                      Colors.blue,
                      Colors.deepOrange,
                      Colors.red
                    ],
                    dashWidth: 1,
                    dashGap: 2,
                    animation: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          width: 100,
                        ),
                        const SizedBox(width: 10),
                        const SizedBox(
                          child: Text(
                            "115",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              color: Colors.blue,
              child: Stack(),
            ),
          ),
        ],
      ),
    );
  }
}
