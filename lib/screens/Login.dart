import 'package:firestorapp/screens/First%20scteen.dart';
import 'package:firestorapp/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './Home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          SafeArea(
              child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 33,
                  ),
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome back ! Login with your credentials",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 33),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: email,
                          obscureText: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 62, 38, 202),
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 62, 38, 202))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: password,
                          obscureText: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 62, 38, 202),
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 62, 38, 202))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                    ],
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () async {
                  try {
                    var authenticationobject = FirebaseAuth.instance;

                    UserCredential myUser =
                        await authenticationobject.signInWithEmailAndPassword(
                            email: email.text, password: password.text);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("added successfully")));

                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return FirstScreen();
                      },
                    ));
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("sorry there is an error")));
                  }
                },
                minWidth: 350,
                height: 60,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have  an account ?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return FirstScreen();
                          },
                        ));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
