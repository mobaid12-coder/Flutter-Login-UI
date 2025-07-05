import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // ✅ Correct constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('images/logo.png'),
                  ),
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maintenance', style: TextStyle(fontSize: 20)),
                      Text(
                        'Box',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xfff97038),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, color: Color(0xff203142)),
                ),
              ),
              SizedBox(height: 14),
              Center(
                child: Text(
                  'Please login if you have an account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Color(0xff4c5980)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Color(0xfff8f9f8),
                    filled: true,
                    prefixIcon: Icon(Icons.email, color: Color(0xff323f4b)),
                    border: OutlineInputBorder(
                      // 👈 This is required!
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB)),
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Color(0xfff8f9fa),
                    filled: true,
                    prefixIcon: Icon(Icons.password_sharp, color: Color(0xff323f4b)),
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(0, 250, 244, 244)),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
              // Login Button
              Container(
                height: 50,
                width: 300,

                decoration: BoxDecoration(
                  color: Color(0xfff97038),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color(0xff4c5980)),
                  ),
                  Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color(0xfff9703b)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
