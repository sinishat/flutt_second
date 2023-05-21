import 'package:flutter/material.dart';
import 'package:flutt_second/lastpage.dart';
class LastPage extends StatefulWidget {
  final String responseText;

  LastPage({required this.responseText});

  @override
  _LastPageState createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  bool _isLoading = true;
  String _responseText = '';

  @override
  void initState() {
    super.initState();
    _getResponse();
  }

  Future<void> _getResponse() async {
    // Wait for response
    await Future.delayed(Duration(seconds: 3)); // Simulate response delay
    setState(() {
      _isLoading = false;
      _responseText = widget.responseText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Last Page'),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : Text(
          _responseText,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
