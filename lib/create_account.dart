import 'package:flutter/material.dart';
import 'package:flutter_ui/login.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  static bool passwordSeeing = false;
  static bool confirmPasswordSeeing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 130),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Create  Account ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 93, 164),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Create an account so you can explore all the \n                           existing jobs",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 70,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)),
                  hintText: 'Full name',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)),
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(
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
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)),
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              width: 330,
              child: TextField(
                obscureText: confirmPasswordSeeing,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (confirmPasswordSeeing) {
                            confirmPasswordSeeing = false;
                          } else {
                            confirmPasswordSeeing = true;
                          }
                        });
                      },
                      icon: confirmPasswordSeeing
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)),
                  hintText: 'Confirm Password',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 330,
              height: 55,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(11)),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 10, 101, 174),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  const Text(
                    "Have an account ?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Login()))),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromARGB(255, 13, 97, 166),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
