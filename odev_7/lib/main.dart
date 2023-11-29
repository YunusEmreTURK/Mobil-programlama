import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100.0,
                ),
                Image(
                  image: AssetImage("photo/flutter.png"),
                  width: 300,
                  height: 200,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password'),
                  style: TextButton.styleFrom(
                    primary: Colors.blue
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    onPrimary: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 130.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('New User? Create Account'),
                  style: TextButton.styleFrom(
                      primary: Colors.black54
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}