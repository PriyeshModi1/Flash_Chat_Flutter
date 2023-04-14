import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String id = 'login_screen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // login() async {
  //   User? currentUser;
  //   await firebaseAuth
  //       .signInWithEmailAndPassword(
  //           email: emailController.text.trim(),
  //           password: passwordController.text.trim())
  //       .then((auth) {
  //     currentUser = auth.user;
  //   }).catchError((error) {
  //     // ignore: avoid_print
  //     print(error);
  //   });

  //   if (currentUser != null) {
  //     Navigator.pushNamed(context, ChatScreen.id);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                prefixIcon: const Icon(Icons.email),
                hintText: 'Enter Your Email',
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                prefixIcon: const Icon(Icons.lock),
                hintText: 'Enter Your Password',
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                buttonColor: Colors.lightBlueAccent,
                buttonTitle: 'Log In',
                onPressed: () {
                  // login();
                  Navigator.pushNamed(context, ChatScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
