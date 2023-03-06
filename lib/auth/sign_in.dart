import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class signIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Column(children: [
              const Text("Sign In to Continue"),
              SizedBox(height: 30),
              Text(
                "Vegi",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                        blurRadius: 15,
                        color: Colors.green.shade900,
                        offset: Offset(3, 5)),
                  ],
                ),
              ),
              SizedBox(height: 50),
              SignInButton(Buttons.Google, onPressed: () {}),
              SizedBox(height: 15),
              SignInButton(Buttons.Apple, onPressed: () {}),
              SizedBox(height: 50),
              Text(
                'By Signing in you agreeing to our',
                style: TextStyle(color: Colors.grey[700]),
              ),
              Text(
                'Term and Privacy Policy',
                style: TextStyle(color: Colors.grey[700]),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
