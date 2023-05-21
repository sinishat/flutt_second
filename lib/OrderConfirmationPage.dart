import 'package:flutter/material.dart';

class OrderConfirmationPage extends StatefulWidget {
  @override
  _OrderConfirmationPageState createState() => _OrderConfirmationPageState();
}

class _OrderConfirmationPageState extends State<OrderConfirmationPage> {
  String _selectedPaymentOption = 'Credit card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please select a payment option:',
              style: TextStyle(fontSize: 18),

            ),
            SizedBox(height: 60),
            DropdownButton<String>(
              value: _selectedPaymentOption,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentOption = value!;
                });
              },
              items: [
                DropdownMenuItem(
                  value: 'Credit card',
                  child: Text('Credit card'),
                ),
                DropdownMenuItem(
                  value: 'UPI',
                  child: Text('UPI'),
                ),
                DropdownMenuItem(
                  value: 'Net banking',
                  child: Text('Net banking'),
                ),
                DropdownMenuItem(
                  value: 'Cash on delivery',
                  child: Text('Cash on delivery'),
                ),
              ],
            ),
            SizedBox(height: 60.0),
            TextField(

              decoration: InputDecoration(
                hintText: 'Enter your total amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              child: Text(
                'Place order',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Change the text color to purple
                ),
              ),


              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurpleAccent, // Change the primary color to white
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ), onPressed: () {  },

            ),
          ],
        ),
      ),
    );
  }
}

class _nameController {
}
