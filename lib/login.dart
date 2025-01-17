import 'package:flutter/material.dart';

import 'create_account.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static bool passwordSeeing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 130),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Login Here",
                style: TextStyle(
                    color: const Color.fromARGB(255, 7, 93, 164),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text(
            "Welcome back you've\n      been missed!",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 70,
            width: 330,
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                hintText: 'Email',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 70,
            width: 330,
            child: TextField(
              obscureText: passwordSeeing,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (passwordSeeing) {
                          passwordSeeing = false;
                        } else {
                          passwordSeeing = true;
                        }
                      });
                    },
                    icon: passwordSeeing
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 190),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    color: const Color.fromARGB(255, 6, 87, 154),
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 330,
            height: 55,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 10, 101, 174),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              child: Text(
                "Sign in",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 79),
            child: Row(
              children: [
                Text("Don't  have an account?"),
                TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => CreateAccount()))),
                  child: Text(
                    "Register!",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 13, 97, 166)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
