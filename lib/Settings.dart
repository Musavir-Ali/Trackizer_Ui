import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:get/route_manager.dart';
import 'package:trackizer/Bottom_Nav.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Get.to(NavBar());
          },
        ),
        backgroundColor: const Color.fromARGB(255, 31, 30, 30),
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Color.fromRGBO(162, 162, 181, 100),
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/Avatar.png"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "John Doe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("j.doe@gmail.com",
                      style: TextStyle(
                        color: Color.fromRGBO(162, 162, 181, 100),
                        fontSize: 12,
                      )),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(162, 162, 181, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Card(
                color: Color.fromARGB(90, 90, 98, 100),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading:
                      Icon(Ionicons.finger_print_sharp, color: Colors.white),
                  title: Text(
                    'Security',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Card(
                color: Color.fromARGB(90, 90, 98, 100),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Icon(
                    Ionicons.cloud,
                    color: Colors.white,
                  ),
                  title: Text(
                    'iCloud sync',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Card(
                color: Color.fromARGB(90, 90, 98, 100),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Icon(
                    Ionicons.return_down_back_outline,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Sorting',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Card(
                color: Color.fromARGB(90, 90, 98, 100),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Icon(
                    Ionicons.bar_chart,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Summary',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Card(
                color: Color.fromARGB(90, 90, 98, 100),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Icon(
                    Ionicons.cash,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Defualt Currency',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Card(
                color: Color.fromARGB(90, 90, 98, 100),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Icon(
                    Ionicons.square_outline,
                    color: Colors.white,
                  ),
                  title: Text(
                    'App Icon',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Card(
                color: Color.fromARGB(90, 90, 98, 100),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Icon(
                    Ionicons.moon,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Theme',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
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
