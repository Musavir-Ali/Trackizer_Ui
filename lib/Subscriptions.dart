import 'package:flutter/material.dart';
import 'package:circular_seek_bar/circular_seek_bar.dart';

class Subs extends StatefulWidget {
  const Subs({Key? key}) : super(key: key);

  @override
  _SubsState createState() => _SubsState();
}

class _SubsState extends State<Subs> {
  double _progress = 76;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
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
                                    MediaQuery.of(context).size.height * 0.1,
                              ),
                              Image.asset(
                                "assets/images/logo.png",
                                width: 100,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              const Text(
                                "\$118",
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              const Text(
                                "This month bills",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color(0xFF83839C),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              ElevatedButton(
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
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
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Active Subs",
                                  style: TextStyle(
                                    color: Color(0xFF83839C),
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
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lowest Sub",
                                  style: TextStyle(
                                    color: Color(0xFF83839C),
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
                color: const Color.fromARGB(255, 31, 30, 30),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const TabBar(
                              isScrollable: true,
                              indicatorColor: Colors.white,
                              labelColor: Colors.white,
                              dividerColor: Colors.transparent,
                              tabs: [
                                Tab(
                                  child: Text("Subscriptions"),
                                ),
                                Tab(
                                  child: Text("Upcoming Bills"),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          Expanded(
                            child: TabBarView(
                              children: [
                                // Subscriptions Tab
                                ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    List<String> subscriptionNames = [
                                      "Spotify Premium",
                                      "Youtube Premium",
                                      "Microsoft 365",
                                      "iCloud",
                                      "Netflix",
                                    ];
                                    List<String> subscriptionImages = [
                                      "assets/images/spotify.png",
                                      "assets/images/Yt.png",
                                      "assets/images/Microsoft.png",
                                      "assets/images/icloud.png",
                                      "assets/images/Netflix.png",
                                    ];

                                    List<String> subscriptionAmounts = [
                                      "\$9.99",
                                      "\$11.99",
                                      "\$6.99",
                                      "\$2.99",
                                      "\$15.99",
                                    ];

                                    return Card(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        side: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: ListTile(
                                        leading: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            subscriptionImages[index],
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        title: Text(
                                          subscriptionNames[index],
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        trailing: Text(
                                          subscriptionAmounts[index],
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    List<String> subscriptionNames = [
                                      "Spotify Premium",
                                      "Youtube Premium",
                                      "Microsoft 365",
                                      "iCloud",
                                      "Netflix",
                                    ];
                                    List<String> subscriptionImages = [
                                      "assets/images/jan25.png",
                                      "assets/images/jan25.png",
                                      "assets/images/jan25.png",
                                      "assets/images/jan25.png",
                                      "assets/images/jan25.png",
                                    ];

                                    List<String> subscriptionAmounts = [
                                      "\$9.99",
                                      "\$11.99",
                                      "\$6.99",
                                      "\$2.99",
                                      "\$15.99",
                                    ];

                                    return Card(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        side: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: ListTile(
                                        leading: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            subscriptionImages[index],
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        title: Text(
                                          subscriptionNames[index],
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        trailing: Text(
                                          subscriptionAmounts[index],
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
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
          ],
        ),
      ),
    );
  }
}
