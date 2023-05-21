import 'package:flutter/material.dart';
import 'package:flutt_second/request_page.dart';

class FeedbackSubmitButton extends StatelessWidget {
  final VoidCallback onPressed;

  FeedbackSubmitButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
        showDialog(
          context: context,
          builder: (context) {
            return Center(
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
                    child: Text('Close'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Text('Submit Feedback'),
    );
  }
}
