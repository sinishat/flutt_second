import 'package:flutt_second/request_page.dart';
import 'package:flutter/material.dart';

class SubmitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thank you for your feedback!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
                child: Text('close',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Change the primary color to white
                  padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RequestPage()),
              );
            },
            ),
          ],
        ),
      ),
    );
  }
}
