import 'package:flutter/material.dart';
import "home.dart";
import "localstorage.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
