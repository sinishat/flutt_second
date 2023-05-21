import 'package:flutter/material.dart';

class ViewDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Details'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                fontSize: 30.0,
              ),
            ),

            Text(
              'Thaliparamba Municipality',
              style: TextStyle(
                height: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Counsilor - Mrs.Nisha k',
              style: TextStyle(
                height: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Contact number - 8976341567',
              style: TextStyle(
                height: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              ' Location -  Municipal Office Court Rd, Taliparamba, Kerala',
              style: TextStyle(
                height: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),

            Text(
              'Total number of ward - 41',
              style: TextStyle(
                height: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),

            Text(
              'District - kannur',
              style: TextStyle(
                height: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Number of kudumbasrees - 10',
              style: TextStyle(
                height: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Number of kudumbasree hotels - 2',
              style: TextStyle(
                height: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Number of population - 94000',
              style: TextStyle(
                height: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),






          ],
        ),
      ),
    );
  }
}
