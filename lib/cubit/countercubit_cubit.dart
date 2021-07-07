import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'countercubit_state.dart';

class CountercubitCubit extends Cubit<CountercubitState> {
  CountercubitCubit() : super(CountercubitInitial());

  void cubitIncrement(int value) {
    emit((state is CountercubitStateFilled)
        ? CountercubitStateFilled(
            (state as CountercubitStateFilled).value + value)
        : CountercubitStateFilled(0));
  }
}
