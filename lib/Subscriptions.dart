import 'package:flutter/material.dart';
import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
            Expanded(
              flex: 5,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SubscriptionInfo(
                              label: "Active Subs",
                              value: "3",
                            ),
                            SubscriptionInfo(
                              label: "Highest Sub",
                              value: "\$69.99",
                            ),
                            SubscriptionInfo(
                              label: "Lowest Sub",
                              value: "\$52.99",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: const Color.fromARGB(255, 31, 30, 30),
                child: Padding(
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
                            SubscriptionsListView(),
                            UpcomingBillsListView(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          backgroundColor: Color.fromARGB(255, 31, 30, 30),
          color: Color.fromRGBO(78, 78, 97, 100),
          buttonBackgroundColor: Color.fromARGB(255, 255, 98, 0),
          items: <Widget>[
            Icon(
              Icons.home,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.apps,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.calendar_month,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.wallet,
              size: 20,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            // Handle navigation here based on the tapped index
          },
        ),
      ),
    );
  }
}

class SubscriptionInfo extends StatelessWidget {
  final String label;
  final String value;

  const SubscriptionInfo({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            label,
            style: TextStyle(
              color: Color(0xFF83839C),
              fontSize: 12,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class SubscriptionsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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

        return SubscriptionCard(
          image: subscriptionImages[index],
          name: subscriptionNames[index],
          amount: subscriptionAmounts[index],
        );
      },
    );
  }
}

class UpcomingBillsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        List<String> billNames = [
          "Spotify Premium",
          "Yt Premium",
          "Microsoft 365",
          "iCloud",
          "Netflix",
        ];
        List<String> billImages = [
          "assets/images/jan25.png",
          "assets/images/jan25.png",
          "assets/images/jan25.png",
          "assets/images/jan25.png",
          "assets/images/jan25.png",
        ];

        List<String> billAmounts = [
          "\$9.99",
          "\$11.99",
          "\$6.99",
          "\$2.99",
          "\$15.99",
        ];

        return SubscriptionCard(
          image: billImages[index],
          name: billNames[index],
          amount: billAmounts[index],
        );
      },
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final String image;
  final String name;
  final String amount;

  const SubscriptionCard({
    required this.image,
    required this.name,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.white),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            image,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
