import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trackizer/Subscriptions.dart';

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
      backgroundColor: Colors.black,
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
                animDurationMillis: 5000,
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
                      SizedBox(height: 35),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(text: 'Your spending are on track '),
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    child: Text(
                                      '🎉',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.yellowAccent),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.white,
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                SubscriptionCard(
                  image: 'assets/images/car.png',
                  name: 'Auto & Transport',
                  amount: '\$25.99',
                  subtitle: 'Monthly subscription',
                ),
                SubscriptionCard(
                  image: 'assets/images/star.png',
                  name: 'Entertainment',
                  amount: '\$50.99',
                  subtitle: 'Annual subscription',
                ),
                SubscriptionCard(
                  image: 'assets/images/finger.png',
                  name: 'Security',
                  amount: '\$10.99',
                  subtitle: 'Quarterly subscription',
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Card(
                    color: Color.fromARGB(255, 31, 30, 30),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
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
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.black,
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

          switch (index) {
            case 0:
              // Navigate to Home page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Subs()),
              );
              break;
            case 1:
              // Navigate to Apps page (Spendings)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Spendings()),
              );
              break;
            case 2:
              // Add your logic for the third icon
              break;
            case 3:
              // Add your logic for the fourth icon
              break;
            case 4:
              // Add your logic for the fifth icon
              break;
          }
        },
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final String image;
  final String name;
  final String amount;
  final String subtitle;

  const SubscriptionCard({
    required this.image,
    required this.name,
    required this.amount,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 31, 30, 30),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            image,
            width: 30,
            height: 30,
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
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 10,
            color: Color.fromRGBO(162, 162, 181, 100),
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
