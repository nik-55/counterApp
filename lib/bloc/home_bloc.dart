import 'home_state.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Counter")),
          body: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => CounterCubit()),
              BlocProvider(create: (_) => ApiCubit()),
            ],
            child: CounterPage(),
          )),
    );
  }
}
