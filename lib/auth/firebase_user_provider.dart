import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ArabicSignLanguageFirebaseUser {
  ArabicSignLanguageFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

ArabicSignLanguageFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ArabicSignLanguageFirebaseUser> arabicSignLanguageFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ArabicSignLanguageFirebaseUser>(
            (user) => currentUser = ArabicSignLanguageFirebaseUser(user));
