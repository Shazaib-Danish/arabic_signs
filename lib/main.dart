import 'package:arabic_lan/rcording/rcording_widget.dart';
import 'package:arabic_lan/signin/signin_widget.dart';

import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'auth/firebase_user_provider.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import 'backend/firebase.dart';
import 'flutter_flow/flutter_flow_theme.dart';

List<CameraDescription> cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<ArabicSignLanguageFirebaseUser> userStream;
  ArabicSignLanguageFirebaseUser initialUser;

  @override
  void initState() {
    super.initState();
    userStream = arabicSignLanguageFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    getWords();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arabic sign language ',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: initialUser == null
          ? const Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
            color: FlutterFlowTheme.primaryColor,
          ),
        ),
      )
          : currentUser.loggedIn
          ? RcordingWidget()
          : SigninWidget(),
    );
  }
}
