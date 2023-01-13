import 'package:flutter/material.dart';
import 'package:mychatapp/screens/auntheticate/home.dart';
import 'package:mychatapp/services/auth.dart';

class restration extends StatefulWidget {
  final Function toggleView;
  const restration({required this.toggleView});

  @override
  State<restration> createState() => _restrationState();
}

class _restrationState extends State<restration> {
  final bool _isloading = false;
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String name = "";
  String email = "";
  String password = "";
  String photoURL = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Registration",
            style: TextStyle(
                fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange[600],
        ),
        body: Center(
          child: _isloading
              ? const Center(
                  child: CircularProgressIndicator(color: Colors.orange),
                )
              : SingleChildScrollView(
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
                              key: _formKey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      labelText: 'Name',
                                      prefixIcon: Icon(Icons.person_outline),
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        name = value;
                                      });
                                    },
                                    validator: (value) {
                                      return value!.isEmpty
                                          ? 'Please enter your name'
                                          : null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      labelText: 'Email',
                                      prefixIcon: Icon(Icons.email_outlined),
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: (String value) {
                                      setState(() {
                                        email = value;
                                      });
                                    },
                                    validator: (value) {
                                      return value!.isEmpty
                                          ? 'Please enter email'
                                          : null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      labelText: 'Password',
                                      prefixIcon: Icon(Icons.lock_outline),
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: (String value) {
                                      password = value;
                                    },
                                    validator: (value) {
                                      return value!.isEmpty
                                          ? 'Please enter password'
                                          : null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  MaterialButton(
                                    height: 40,
                                    minWidth: double.infinity,
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        print(email);
                                        print(password);
                                      }
                                    },
                                    color: Colors.orange,
                                    textColor: Colors.white,
                                    child: const Text(
                                      'Register',
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
                                      "Already a member? Sign in.",
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

  register() async {
    // if (_formKey.currentState!.validate()) {
    //   setState(() {
    //     _isloading = true;
    //   });
    //   await _auth
    //       .registerUserWithEmailAndPassword(name, email, password)
    //       .then((value) {
    //     if (value == true) {
    //       Navigator.push(
    //           context, MaterialPageRoute(builder: (context) => home()));
    //     }
    //   });
    // }
  }
}
