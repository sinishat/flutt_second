
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutt_second/food_booking_page.dart';
import 'package:flutt_second/request_page.dart';
import 'package:flutt_second/signup_screen.dart';
import 'package:flutt_second/view_details_page.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
class EnterPage extends StatelessWidget {
  String id='enterpage';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
              );


              // Handle sign out button press
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
        title: Text("E-seva",


          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white

          ),

        ),

        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Column(



          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Municipality section
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text(
                  "THALIPARAMBA MUNICIPALITY",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,

                  ),

                ),

              ),

            ),
            // About Us section
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(title: "About Us"),
                  Text(
                    "Taliparamba is a Municipality city in district of Kannur, Kerala. The Taliparamba city is divided into 41 wards for which elections are held every 5 years.Taliparamba Municipality has total administration over 15,874 houses to which it supplies basic amenities like water and sewerage.Current estimated population of Taliparamba Municipality in 2023 is approximately 98,000. ",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),
            ServiceButton(
              title: "View details",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewDetailsPage()),
                );


                // TODO: Handle button press
              },
            ),
            // Providing Services section
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(title: "Providing Services"),
                  SizedBox(height: 16),
                  ServiceButton(
                    title: "Request Application",



                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RequestPage()),
                      );

                      // TODO: Handle button press
                    },

                  ),
                  SizedBox(height: 16),
                  ServiceButton(
                    title: "Order your food ",

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodBookingPage()),
                      );


                      // TODO: Handle button press
                    },

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

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ServiceButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  ServiceButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

    );
  }
}
