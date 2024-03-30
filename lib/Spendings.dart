import 'package:flutter/material.dart';

class Spendings extends StatefulWidget {
  const Spendings({Key? key}) : super(key: key);

  @override
  State<Spendings> createState() => _SpendingsState();
}

class _SpendingsState extends State<Spendings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
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
    );
  }
}
