part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterBlocState extends CounterState {
  final int value;

  CounterBlocState(this.value);
}
