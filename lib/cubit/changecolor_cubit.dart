import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'changecolor_state.dart';

class ChangecolorCubit extends Cubit<MaterialColor> {
  ChangecolorCubit() : super(Colors.amber);

  void toggleColor() {
    if (state == Colors.amber) {
      emit(Colors.blue);
    } else {
      emit(Colors.amber);
    }
  }
}
