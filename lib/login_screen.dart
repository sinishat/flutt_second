import 'package:flutt_second/enter_page.dart';
import 'package:flutt_second/home_page.dart';
import 'package:flutt_second/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _auth=FirebaseAuth.instance;


  BuildContext? get _context => null;
  Future<void> _login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      Navigator.pushReplacementNamed(_context!, EnterPage() as String);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'login to your Account',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
            ),






            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {




                try {
                  final newUser = await _auth.signInWithEmailAndPassword(
                      email: _emailController.text, password:_passwordController.text);


                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EnterPage()),
                    );


                  // AuthController.instance.register(emailController.text.trim(),
                  //     passwordController.text.trim());

                }
                catch(e){
                  print(e);
                }

              },

              child: Text('Login ',
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
              ),

            ),

            TextButton(
              onPressed: () {



                // Navigate to the sign up page when the link is tapped
              },
              child: Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );


                // Navigate to the sign up page when the button is tapped
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple, // Change the text color to purple
                ),
              ),


              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Change the primary color to white
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),




          ],

        ),
      ),
    );
  }
}

