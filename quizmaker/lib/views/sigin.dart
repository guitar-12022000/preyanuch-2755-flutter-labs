import 'package:flutter/material.dart';
import 'package:quizmaker/views/signup.dart';

import '../widgets/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        // brightness: Brightness.light),
      ),
      body: Form(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty ? "Enter Emailid" : null;
                },
                decoration: InputDecoration(hintText: "Email"),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(
                //gเอาไว้คั่น
                height: 6,
              ),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty ? "Enter Password" : null;
                },
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.circular(30)), //ใช้  padding ดีกว่า height
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 15.5),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text('Sign up ',
                        style: TextStyle(
                            fontSize: 15.5,
                            decoration: TextDecoration.underline)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
