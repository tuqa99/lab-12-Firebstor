import 'package:firestorapp/screens/Login.dart';
import 'package:firestorapp/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(213, 183, 236, 60),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                ],
              ),
              SizedBox(
                height: 44,
              ),
              CircleAvatar(
                  radius: 85,
                  backgroundImage: NetworkImage(
                      'https://c.tenor.com/L4DBkoFme9oAAAAM/dorry.gif')),
              SizedBox(
                height: 44,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ));
                },
                minWidth: 350,
                height: 60,
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  "Sign UP",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ));
                },
                minWidth: 350,
                height: 60,
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
