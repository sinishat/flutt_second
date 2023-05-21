import 'package:flutt_second/book_now_page.dart';
import 'package:flutter/material.dart';

class FoodBookingPage extends StatefulWidget {
  @override
  _FoodBookingPageState createState() => _FoodBookingPageState();
}

class _FoodBookingPageState extends State<FoodBookingPage> {
  String _selectedHotel = '';
  int _selectedPackets = 0;
  final TextEditingController _packetController = TextEditingController();

  final List<int> _packets = [100, 200, 300, 400, 500,800];

  final List<String> _hotels = ['Hotel Grameen', 'Adithya hotel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Booking'),
        backgroundColor: Colors.deepPurpleAccent,

      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select  your nearest kudumbasree hotel:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _hotels
                  .map((hotel) => Expanded(
                child: RadioListTile(
                  title: Text(hotel),
                  value: hotel,
                  groupValue: _selectedHotel,
                  onChanged: (value) {
                    setState(() {
                      _selectedHotel = value!;
                    });
                  },
                ),
              ))
                  .toList(),
            ),
            SizedBox(height: 30.0),
            Text(
              'prize 50 per packets',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),
            Text(
              'Select number of packets:',
              style: TextStyle(

                fontSize: 18.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _packets
                  .map((packet) => Expanded(
                child: ElevatedButton(
                  child: Text('$packet'),
                  onPressed: () {
                    setState(() {
                      _selectedPackets = packet;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: _selectedPackets == packet
                        ? Colors.purpleAccent
                        : Colors.deepPurple,
                  ),
                ),
              ))
                  .toList(),
            ),
            SizedBox(height: 30.0),
            Text(
              'If not in the above list, please enter your number of packets below:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 35.0),
            TextField(
              controller: _packetController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _selectedPackets = int.tryParse(value) ?? 0;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter the number of packets',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 45.0),
            Center(
              child: ElevatedButton(
                child: Text('Book Now'),
                onPressed: () {

                  if (_selectedHotel.isNotEmpty && _selectedPackets != 0) {
                    // do something with selected hotel and packets
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please select a hotel and packets.'),
                      ),
                    );
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookNowPage()),
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}

