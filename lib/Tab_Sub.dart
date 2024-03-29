import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabSubs extends StatelessWidget {
  const TabSubs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Subscriptions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Subscriptions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Subscriptions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),

      
    );
  }
}