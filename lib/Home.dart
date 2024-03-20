import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.0), // Adjust top padding based on screen height
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
            const Expanded(
              flex: 3, // Adjust flex to control the space taken by the image
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Image(
                  image: AssetImage("assets/images/Frame.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Congue malesuada in ac justo, a tristique leo massa Arcu leo leo urna risus.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
