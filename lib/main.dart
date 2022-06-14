import 'package:flutter/material.dart';
import "./bloc/home_bloc.dart";
import "localstorage.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Counter', home: HomePage());
  }
}
