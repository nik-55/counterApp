import "package:flutter/material.dart";

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100],
      child: Column(
          children: [Text("Welcome This is Flutter App")],
          mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}
