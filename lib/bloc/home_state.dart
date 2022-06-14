import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import "home_event.dart";

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: () => {
                        context.read<CounterCubit>().decrement(),
                        context.read<ApiCubit>().getBinary(),
                      }),
              BlocBuilder<CounterCubit, int>(
                builder: (context, count) => Center(
                    child: Text('$count',
                        style: const TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold))),
              ),
              FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () => {
                        context.read<CounterCubit>().increment(),
                        context.read<ApiCubit>().getBinary(),
                      }),
            ],
          ),
          BlocBuilder<ApiCubit, String>(
            builder: (context, binary) => Container(
                margin: EdgeInsets.all(20),
                child: Text('$binary',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold))),
          ),
        ],
      ),
    );
  }
}
