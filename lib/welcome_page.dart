import 'package:flutt_second/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Container(
            decoration: BoxDecoration(

              color: Colors.deepPurpleAccent,
            ),
            padding: EdgeInsets.only(

              top: MediaQuery
                  .of(context)
                  .padding
                  .top + 20.0,
              left: 20.0,
              right: 94.0,
              bottom: 12.0,
            ),

            child: Text(
              'Welcome to E-Seva',

              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: <Widget>[


              SizedBox(
                height: 16.0,

              ),


              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },

                child: Text(
                  'Get started',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Change the text color to purple
                  ),
                ),


                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  // Change the primary color to white
                  padding: EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}