import './homedrawer.dart';
import "package:flutter/material.dart";
import '../bloc/home_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter",
      home: Scaffold(
        drawer: const Drawer(child: HomeDrawer()),
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: const HomePage(),
      ),
    );
  }
}
