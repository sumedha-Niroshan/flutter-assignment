import 'dart:convert';
import 'package:assingment/screens/profile.dart';
import 'package:assingment/widgets/button.dart';
import 'package:assingment/widgets/text_feild.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() async {
    try {
      var url = Uri.parse('https://dev-admin.kreyol.app/api/v1/login');
      var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
      var body = {
        'password': _passwordController.text,
        'email': _emailController.text,
      };

      var response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

        if (json['status'] == 1) {
          Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
          );
        }
        // Login successful, handle response
      } else {
        // Login failed, handle error
        showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Login Failed'),
              content: const Text('Incorrect email or password.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      // Exception occurred, handle error
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),

                Image.asset("assets/logo.png"),

                const Text(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    "Sign In"),
                const SizedBox(
                  height: 30,
                ),

                // email
                TextInputFeild(
                  controller: _emailController,
                  hintText: "Email",
                  isPassword: false,
                  inputkeyboardType: TextInputType.emailAddress,
                  icon: const Icon(Icons.email_outlined),
                  textinputAction: TextInputAction.next,
                ),

                const SizedBox(
                  height: 10,
                ),

                // password
                TextInputFeild(
                  controller: _passwordController,
                  hintText: "Password",
                  isPassword: true,
                  inputkeyboardType: TextInputType.visiblePassword,
                  icon: const Icon(Icons.key_sharp),
                  textinputAction: TextInputAction.done,
                ),

                const SizedBox(
                  height: 10,
                ),

                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Froget Password?",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )),
                const SizedBox(
                  height: 10,
                ),

                // Login button
                SubmitButton(text: "LOGIN", onPressed: login),
                const SizedBox(
                  height: 15,
                ),

                //Language button
                SubmitButton(text: "English", onPressed: () {}),
                const SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
