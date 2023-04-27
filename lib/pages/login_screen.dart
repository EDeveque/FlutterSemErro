// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../homepage.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120),

            // DISCOVER A NEW PATH
            Text(
              'Discover a New Path',
              style: GoogleFonts.bebasNeue(
                fontSize: 44,
              ),
            ),
            SizedBox(height: 60),

            // EMAIL AND PASSWORD
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // EMAIL
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 15),

                  // PASSWORD
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 15),

                  // FORGOT PASSWORD
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            SizedBox(height: 60),

            // SIGN IN BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child:
                        Text('Sign in', style: TextStyle(color: Colors.white)),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.shade200,
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 60),

            // or continue with
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Or continue with'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 60),

            // google, apple, facebook sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 75,
                  padding: EdgeInsets.all(16),
                  child: Image.asset('lib/icons/google.png'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    height: 75,
                    padding: EdgeInsets.all(16),
                    child: Image.asset('lib/icons/apple.png'),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  height: 75,
                  padding: EdgeInsets.all(16),
                  child: Image.asset('lib/icons/facebook.png'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),

            SizedBox(height: 60),

            // not a member? Register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
