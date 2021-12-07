import 'package:arabic_lan/email_authen/email_auth.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'email_auth.dart';
import 'firebase_user_provider.dart';

export 'anonymous_auth.dart';
export 'apple_auth.dart';
export 'email_auth.dart';
export 'google_auth.dart';

/// Tries to sign in or create an account using Firebase Auth.
/// Returns the User object if sign in was successful.
Future<User> signInOrCreateAccount(
    BuildContext context, Future<UserCredential> Function() signInFunc) async {
  try {
    final userCredential = await signInFunc();
    return userCredential.user;
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: ${e.message}')),
    );
    return null;
  }
}

Future signOut() => FirebaseAuth.instance.signOut();

Future resetPassword({String email, BuildContext context}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: ${e.message}')),
    );
    return null;
  }
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Password reset email sent!')),
  );
}

Future<bool> verifyEmailOTP(email, otp, BuildContext context, password, String firstName,
    String lastName, String phoneNumber) async {
  bool res = EmailAuth(sessionName: 'Arabic Sign Language')
      .validateOtp(recipientMail: email, userOtp: otp);
  print(res);
  if (res) {
    print('OTP verified');
    print(email + password);
    createAccountWithEmail(context, email, password,
        firstName: firstName, lastName: lastName, phone: phoneNumber);
    return res;
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Invalid Email code.'),
      ),
    );
    print('Invalid OTP');
    return res;
  }
}

Future sendEmailVerification() async => currentUser?.user?.sendEmailVerification();

String get currentUserEmail => currentUser?.user?.email ?? '';

String get currentUserUid => currentUser?.user?.uid ?? '';

String get currentUserDisplayName => currentUser?.user?.displayName ?? '';

String get currentUserPhoto => currentUser?.user?.photoURL ?? '';

String get currentPhoneNumber => currentUser?.user?.phoneNumber ?? '';

bool get currentUserEmailVerified => currentUser?.user?.emailVerified ?? false;

// Set when using phone verification (after phone number is provided).
String _phoneAuthVerificationCode;
// Set when using phone sign in in web mode (ignored otherwise).
ConfirmationResult _webPhoneAuthConfirmationResult;

Future beginPhoneAuth({
  BuildContext context,
  String phoneNumber,
  String email,
  String password,
}) async {
  if (kIsWeb) {
    _webPhoneAuthConfirmationResult =
    await FirebaseAuth.instance.signInWithPhoneNumber(phoneNumber);
    return;
  }
  // If you'd like auto-verification, without the user having to enter the SMS
  // code manually. Follow these instructions:
  // * For Android: https://firebase.google.com/docs/auth/android/phone-auth?authuser=0#enable-app-verification (SafetyNet set up)
  // * For iOS: https://firebase.google.com/docs/auth/ios/phone-auth?authuser=0#start-receiving-silent-notifications
  // * Finally modify verificationCompleted below as instructed.
  await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    timeout: Duration(seconds: 0),
    verificationCompleted: (phoneAuthCredential) async {
      await Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => EmailAuthenWidget(
            email: email,
            password: password,
          ),
        ),
            (r) => false,
      );
    },
    verificationFailed: (exception) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error with phone verification: ${exception.message}'),
      ));
    },
    codeSent: (verificationId, _) {
      _phoneAuthVerificationCode = verificationId;
    },
    codeAutoRetrievalTimeout: (_) {},
  );
}

Future verifySmsCode({
  BuildContext context,
  String smsCode,
}) async {
  if (kIsWeb) {
    return signInOrCreateAccount(context, () => _webPhoneAuthConfirmationResult.confirm(smsCode));
  } else {
    final authCredential =
    PhoneAuthProvider.credential(verificationId: _phoneAuthVerificationCode, smsCode: smsCode);
    if(authCredential !=null){

    }
    return authCredential;
  }
}
