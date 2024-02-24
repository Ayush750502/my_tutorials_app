import "dart:html";

import "package:flutter/material.dart";

class loginFormPage extends StatefulWidget {
  const loginFormPage({super.key});

  @override
  State<loginFormPage> createState() => _loginFormPage();
}

class _loginFormPage extends State<loginFormPage> {
  String username = "ayushGoyal";
  String email = "ayush@mail.com";
  String password = "hsuya";
  String message = " ";
  String? inputName;
  String? inputMail;
  String? inputPass;

  void loginByName(name) {
    setState(() {
      inputName = name;
    });
  }

  void loginByEmail(email) {
    setState(() {
      inputMail = email;
    });
  }

  void passcode(pass) {
    setState(() {
      inputPass = pass;
    });
  }

  void verify() {
    setState(() {
      if (inputMail != null) {
        if (email == inputMail) {
          if (password == inputPass) {
            message = "You have successfully logged in !";
          } else {
            message = "Password is wrong";
          }
        } else {
          message = "Please enter valid mail id!";
          inputMail = null;
        }
      } else if (inputName != null) {
        if (username == inputName) {
          if (password == inputPass) {
            message = "You have successfully logged in !";
          } else {
            message = "Password is wrong";
            inputName = null;
            inputPass = null;
          }
        } else {
          message = "Please enter valid username";
          inputName = null;
        }
      } else {
        message = "Please fill all the fields!";
        inputMail = null;
        inputName = null;
        inputPass = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login form :-",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).colorScheme.inverseSurface,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$message",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              const Text("Please Enter your username:- "),
              SizedBox(
                width: 400,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Please enter username",
                    hintText: "userName12345",
                  ),
                  onChanged: loginByName,
                ),
              ),
              const Text("Please enter your password:- "),
              SizedBox(
                width: 400,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Please enter username",
                  ),
                  onChanged: passcode,
                ),
              ),
              FloatingActionButton(
                  onPressed: verify,
                  tooltip: 'Login',
                  child: const Text("Login"))
            ],
          ),
        ));
  }
}
