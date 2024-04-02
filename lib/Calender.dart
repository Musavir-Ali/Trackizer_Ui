import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 31, 30, 30),
        elevation: 0,
        title: const Text(
          'Calender',
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.39,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 31, 30, 30),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Subs",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Schedule",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "3 subscriptions for today",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(162, 162, 181, 100),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 8),
                          Container(
                            width: 60,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(78, 78, 97, 100),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: const Column(
                              children: [
                                SizedBox(height: 8),
                                Center(
                                  child: Text(
                                    "08",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Center(
                                  child: Text(
                                    "Mon",
                                    style: TextStyle(
                                      color: Color.fromRGBO(162, 162, 181, 100),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 18),
                                Center(
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.deepOrange,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 60,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(78, 78, 97, 20),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: const Column(children: [
                              SizedBox(height: 8),
                              Center(
                                child: Text(
                                  "09",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Center(
                                child: Text(
                                  "Tue",
                                  style: TextStyle(
                                    color: Color.fromRGBO(162, 162, 181, 100),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 60,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(78, 78, 97, 20),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: const Column(children: [
                              SizedBox(height: 8),
                              Center(
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Center(
                                child: Text(
                                  "Wed",
                                  style: TextStyle(
                                    color: Color.fromRGBO(162, 162, 181, 100),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 60,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(78, 78, 97, 20),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: const Column(children: [
                              SizedBox(height: 8),
                              Center(
                                child: Text(
                                  "11",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Center(
                                child: Text(
                                  "Thu",
                                  style: TextStyle(
                                    color: Color.fromRGBO(162, 162, 181, 100),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 60,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(78, 78, 97, 20),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: const Column(children: [
                              SizedBox(height: 8),
                              Center(
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Center(
                                child: Text(
                                  "Fri",
                                  style: TextStyle(
                                    color: Color.fromRGBO(162, 162, 181, 100),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 60,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(78, 78, 97, 20),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: const Column(children: [
                              SizedBox(height: 8),
                              Center(
                                child: Text(
                                  "13",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Center(
                                child: Text(
                                  "Sat",
                                  style: TextStyle(
                                    color: Color.fromRGBO(162, 162, 181, 100),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Janurary",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(height: 2),
                      Text("8.01.2024",
                          style: TextStyle(
                            color: Color.fromRGBO(162, 162, 181, 100),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 8),
                      Text("\$24.98",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(height: 2),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Text("upcoming bills",
                            style: TextStyle(
                              color: Color.fromRGBO(162, 162, 181, 100),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.9,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(78, 78, 97, 100),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            child: Image.asset('assets/images/Netflix.png',
                                alignment: Alignment.topLeft,
                                width: 100,
                                height: 100),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: const Text("Netflix",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text("\$18.99",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(78, 78, 97, 100),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            child: Image.asset('assets/images/Yt.png',
                                alignment: Alignment.topLeft,
                                width: 100,
                                height: 100),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: const Text("Youtube",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text("\$9.99",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(78, 78, 97, 100),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            child: Image.asset('assets/images/sub_spotify.png',
                                alignment: Alignment.topLeft,
                                width: 100,
                                height: 100),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: const Text("Spotify",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text("\$12.99",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
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
    );
  }
}
