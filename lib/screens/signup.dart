import 'package:firestorapp/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'First scteen.dart';
import 'Home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 44,
                ),
                Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 90,
                      ),
                      Image(
                          width: 60,
                          height: 60,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3ZGttKr3mGLPDOHLVEOFxUGNhfVC02A7xRg&usqp=CAU')),
                      Text(
                        ' Sign up',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Create an account'),
                Column(
                  children: [
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

                      UserCredential myUser = await authenticationobject
                          .createUserWithEmailAndPassword(
                              email: email.text, password: password.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("added successfully")));

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return FirstScreen();
                        },
                      ));
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("sorry there is an error")));
                    }
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
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have  an account ?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
