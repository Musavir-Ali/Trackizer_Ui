import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        backgroundColor: const Color.fromARGB(255, 31, 30, 30),
        elevation: 0,
        title: const Text(
          'New',
          style: TextStyle(
            color: Color.fromRGBO(162, 162, 181, 100),
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 31, 30, 30),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Add new",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Subscription",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset("assets/images/HBO GO Logo.png")
              ],
            ),
          ),
          //end
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
                "HBO GO is a streaming service that offers thousands of hours of content, including movies, documentaries, comedy specials, and all of HBO's shows.",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Monthly Price",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                Text("\$5.99",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
