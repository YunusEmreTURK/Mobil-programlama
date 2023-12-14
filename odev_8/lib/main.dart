import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
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
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password'),
                    style: TextButton.styleFrom(primary: Colors.blue),
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Login Successful! Email: ${emailController.text}, Password: ${passwordController.text}'),
                              ),
                            );
                          }
                        },
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          onPrimary: Colors.white,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 75.0,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('New User? Create Account'),
                    style: TextButton.styleFrom(primary: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
