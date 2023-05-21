import 'package:flutt_second/OrderConfirmationPage.dart';
import 'package:flutter/material.dart';

class BookNowPage extends StatefulWidget {
  @override
  _BookNowPageState createState() => _BookNowPageState();
}

class _BookNowPageState extends State<BookNowPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _foodController = TextEditingController();
  final TextEditingController _venueController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Now'),
        backgroundColor: Colors.deepPurpleAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter authors name ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),

            SizedBox(height: 8.0),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Please enter the food which you wanted',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _foodController,
              decoration: InputDecoration(
                hintText: 'Enter the food',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16.0),
            Text(
              'Venue',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _venueController,
              decoration: InputDecoration(
                hintText: 'Enter your venue',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16.0),
            Text(
              'Enter street address',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                hintText: 'Enter  street address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Enter time',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _timeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter time of food to reach',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                if(_timeController.text!=null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderConfirmationPage()),
                  );
                }
                else{

                }
                String name = _nameController.text;

                // do something with name and age, e.g. book the service
              },
              child: Text('Proceed with payment',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurpleAccent,
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
