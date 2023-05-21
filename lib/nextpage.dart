import 'package:flutter/material.dart';
import 'package:flutt_second/nextpage.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  late String _request;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explain your requests'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What would you like to request?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'Enter your requests here',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _request = value;
                });
              },
            ),




          ],
        ),
      ),
    );
  }
}
