import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Credit Cards',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Image.asset('assets/images/Credit Cards.png',
                  width: 280, height: 300),
            ),
            SizedBox(height: 30),
            const Center(
              child: Text(
                'Subscriptions',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width * 0.65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/Yt.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      "assets/images/Netflix.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      "assets/images/sub_spotify.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      "assets/images/Sub_drive.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Card(
                color: const Color.fromARGB(255, 31, 30, 30),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Add new subscription',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
