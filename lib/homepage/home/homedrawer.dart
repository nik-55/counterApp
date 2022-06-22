import "package:flutter/material.dart";

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100],
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("Welcome This is Flutter App")]),
    );
  }
}
