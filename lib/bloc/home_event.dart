import 'package:counter/localstorage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import "../localstorage.dart";
import 'package:dio/dio.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(int.parse(LocalStorage.getCount()));

  void increment() {
    LocalStorage.setCount((int.parse(LocalStorage.getCount()) + 1).toString());
    emit(state + 1);
  }

  void decrement() {
    if (state - 1 >= 0) {
      LocalStorage.setCount(
          (int.parse(LocalStorage.getCount()) - 1).toString());
      emit(state - 1);
    } else {
      emit(state);
    }
  }

  void reset() {
    LocalStorage.setCount("0");
    emit(0);
  }
}

class ApiCubit extends Cubit<String> {
  static Future<String> _getHttp() async {
    try {
      var count = LocalStorage.getCount();
      final response = await Dio().get(
          ('https://networkcalc.com/api/binary/' + count + '?from=10&to=2'));
      return response.data["converted"];
    } catch (e) {
      return "Error!! Check Your Connectivity";
    }
  }

  ApiCubit() : super("Loading") {
    _getHttp().then((value) => emit(value));
  }

  void getBinary() {
    emit("Loading");
    _getHttp().then((value) => emit(value));
  }

  void reset() {
    emit("0");
  }
}
