import 'package:flutt_second/feedback_page.dart';
import 'package:flutt_second/lastpage.dart';
import 'package:flutt_second/submitfeedback_button.dart';
import 'package:flutt_second/submitpage.dart';
import 'package:flutter/material.dart';
import 'package:flutt_second/lastsubmit_page.dart';
import 'package:flutt_second/nextpage.dart';



class RequestPage extends StatefulWidget {


  final TextEditingController _textController = TextEditingController();

  @override
  _RequestPageState createState() => _RequestPageState();
}
class _RequestPageState extends State<RequestPage> {

  final _formKey = GlobalKey<FormState>();
  String _requestText = 'water';
  get _selectedPaymentOption => null;
  get _selectedService => null;
  get _selectedrequestoption => null;
  get _selectedRequest => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request Page'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text('Requests:', style: Theme.of(context).textTheme.titleLarge),
          DropdownButton<String>(
            value: _selectedrequestoption,
            onChanged: (value) {

              setState(() {
              });

            },
            items: [

              DropdownMenuItem(
                value: 'Waste management and recycling',
                child: Text('Waste management and recycling'),
              ),
              DropdownMenuItem(
                value: 'Water and sewer services:',
                child: Text('Water and sewer services:'),
              ),
              DropdownMenuItem(
                value: 'Roads and transportation',
                child: Text('Roads and transportation'),
              ),
              DropdownMenuItem(
                value: 'Animal control',
                child: Text('Animal control'),
              ),
              DropdownMenuItem(
                value: 'Health and social services',
                child: Text('Health and social services'),
              ),
              ],
          ),





              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  if (_selectedService == null) {
                    // If a service has been selected, navigate to the next page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage()),
                    );
                  } else {
                    // If no service has been selected, stay on the request page
                  }
                  // Navigate to member page when the button is tapped
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),

              SizedBox(height: 40.0),
              Text('Feedback:', style: Theme.of(context).textTheme.headline6),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Provide your feedback',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubmitPage()),
                      );


                  // Navigate to member page when the button is tapped
                },
                child: Text(
                  'submit',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  RaisedButton({required Null Function() onPressed, required Text child}) {}
}
