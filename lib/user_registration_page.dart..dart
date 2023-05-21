import 'package:flutt_second/signup_screen.dart';
import 'package:flutter/material.dart';

class UserRegistrationPage extends StatefulWidget {
  @override
  _UserRegistrationPageState createState() => _UserRegistrationPageState();
}

class _UserRegistrationPageState extends State<UserRegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _aadhaarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('User Registration',
            style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _aadhaarController,
                decoration: InputDecoration(
                  labelText: 'Aadhaar Number',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Aadhaar number';
                  }
                  return null;
                },
              ),

              SizedBox(height: 16),
              TextFormField(
                controller: _aadhaarController,
                decoration: InputDecoration(
                  labelText: 'ward number',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Aadhaar number';
                  }
                  return null;
                },
              ),

              SizedBox(height: 16),
              TextFormField(
                controller: _aadhaarController,
                decoration: InputDecoration(
                  labelText: 'House number',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Home number';
                  }
                  return null;
                },
              ),



              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {

                  if (_formKey.currentState!.validate()) {
                    _registerUser();
                  }
                },
                child: Text('Register',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),

                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent, // Change the primary color to white
                  padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }




  void _registerUser() {
    // Implement registration logic here
    String name = _nameController.text;
    int age = int.parse(_ageController.text);
    String phone = _phoneController.text;
    int aadhaar = int.parse(_aadhaarController.text);
    print('User $name with age $age, phone $phone, and Aadhaar $aadhaar registered');
  }
}
