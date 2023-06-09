import 'package:flash_chat/screens/chat_screen.dart';
// import 'package:flash_chat/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  static const String id = 'registration_screen';
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // signUp() async {
  //   User? currentUser;
  //   await firebaseAuth
  //       .createUserWithEmailAndPassword(
  //           email: emailController.text.trim(),
  //           password: passwordController.text.trim())
  //       .then((auth) {
  //     currentUser = auth.user;
  //   }).catchError((error) {
  //     // ignore: avoid_print
  //     print(error);
  //   });

  //   if (currentUser != null) {
  //     Navigator.pushNamed(context, LoginScreen.id);
  //   }
  // }

  // final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
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
              // textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
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
              // textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
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
                buttonColor: Colors.blueAccent,
                buttonTitle: 'Register',
                onPressed: () {
                  // signUp();
                  // try {
                  //   await _auth.createUserWithEmailAndPassword(
                  //       email: email, password: password);
                  // } catch (e) {
                  //   // ignore: avoid_print
                  //   print(e);
                  // }
                    Navigator.pushNamed(context, ChatScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
