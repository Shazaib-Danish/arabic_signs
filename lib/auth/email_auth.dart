import 'package:arabic_lan/dashboard/dashboard_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';

import 'auth_util.dart';

Future<User> signInWithEmail(BuildContext context, String email, String password) async {
  final signInFunc = () =>
      FirebaseAuth.instance.signInWithEmailAndPassword(email: email.trim(), password: password);
  return signInOrCreateAccount(context, signInFunc);
}

Future<User> createAccountWithEmail(BuildContext context, String email, String password,
    {String firstName, String lastName, String phone}) async {
  print("$email $password");
  final createAccountFunc = () => FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .whenComplete(() {
        signInWithEmail(context, email, password).whenComplete(() {
          FirebaseFirestore.instance.collection('Users').doc().set(
              {"firstName": firstName, "lastName": lastName, "email": email, "phoneNumber": phone});
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => DashboardWidget(),
            ),
            (r) => false,
          );
        });
      });
  return signInOrCreateAccount(context, createAccountFunc);
}

Future sendOTP(String email, BuildContext context) async {
  var res = await EmailAuth(sessionName: 'Arabic Sign Language').sendOtp(recipientMail: email);
  if (res) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('OTP sent to your email'),
      ),
    );
    print('OTP sent');
    print(res);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Invalid to sent OTP Check your email.'),
      ),
    );
    print('Invalid to sent OTP Check your email.');
  }
}
