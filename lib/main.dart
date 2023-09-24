import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rate_purdue_apartment/test_view.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isUserLoggedIn = prefs.getBool('isUserSignedIn');
  if (isUserLoggedIn == null) {
    prefs.setBool('isUserSignedIn', false);
  }

  runApp(ApartmentApp(
      initialRoute:
          isUserLoggedIn == true ? const TestView() : const TestView()));
}

class ApartmentApp extends StatefulWidget {
  final Widget initialRoute;
  const ApartmentApp({Key? key, required this.initialRoute}) : super(key: key);

  // ignore: empty_constructor_bodies

  @override
  State<ApartmentApp> createState() => _ApartmentAppState();
}

class _ApartmentAppState extends State<ApartmentApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => widget.initialRoute,
      },
    );
  }
}
