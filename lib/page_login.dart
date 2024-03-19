import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("E-Learning UPNYK"),
          ),
          body : Column(
            children: [
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ],
        ),
      )
      );
    }
    Widget _usernameField() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          enabled: true,
          onChanged: (value){
            username = value;
          },
          decoration: const InputDecoration(
              hintText: 'Password',
              contentPadding: const EdgeInsets.all(8.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0),
                  )
              )
          ),
        ),
      );
    }

    Widget _passwordField() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          enabled: true,
          obscureText: true,
          decoration: const InputDecoration(
              hintText: 'Username',
              contentPadding: const EdgeInsets.all(8.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0),
                  )
              )
          ),
        ),
      );
    }

    Widget _loginButton(BuildContext context) {
      return Container (
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton (
          onPressed: () {
            String text = "";
            if (username == "flutterMobile" && password == "flutter123"){
              text = "Login Success";
            }
            else {
              text = "Login Failed";
            }
            SnackBar snackBar = SnackBar(
                content: Text(text),
            );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          child: const Text('Login'),
        ),
      );
    }
  }

  class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key : key);

  @override
    _LoginPageState createState() => _LoginPageState();
  }

  class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("E-Learning UPNYK"),
            ),
            body : Column(
              children: [
                _usernameField(),
                _passwordField(),
                _loginButton(context),
              ],
            ),
          )
       );
    }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          username = value;
        },
        decoration: const InputDecoration(
            hintText: 'Password',
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0),
                )
            )
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        decoration: const InputDecoration(
            hintText: 'Username',
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0),
                )
            )
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container (
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton (
        onPressed: () {
          String text = "";
          if (username == "flutterMobile" && password == "flutter123") {
            setState(() {
              text = "Login Success";
              isLoginSuccess = true;
            });
          }
          else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }
          print("isLoginSuccess :$isLoginSuccess");

          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
      ),
    );
  }
  }



