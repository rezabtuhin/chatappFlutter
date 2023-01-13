import 'package:flutter/material.dart';
import 'package:mychatapp/services/auth.dart';

class login extends StatefulWidget {
  final Function toggleView;
  const login({required this.toggleView});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login",
            style: TextStyle(
                fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange[600],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/fish_logo.png',
                  height: 150,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Form(
                        child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          height: 40,
                          minWidth: double.infinity,
                          onPressed: () {},
                          color: Colors.orange,
                          textColor: Colors.white,
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size.fromHeight(40),
                          ),
                          onPressed: () {
                            widget.toggleView();
                          },
                          child: const Text(
                            "Don't have an account? Sign up.",
                            style: TextStyle(
                              color: Colors.orange,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
