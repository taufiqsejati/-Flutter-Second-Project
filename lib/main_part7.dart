import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter_bloc.dart';
import 'package:flutter_application_1/cubit/countercubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
            create: (context) => CounterBloc(),
            child: BlocProvider(
                create: (context) => CountercubitCubit(), child: MainPage())));
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.black,
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bloc State Management',
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Colors.white,
                        )),
                    BlocBuilder<CounterBloc, CounterState>(
                      builder: (_, state) => Text(
                          (state is CounterBlocState) ? "${state.value}" : "-",
                          style: GoogleFonts.poppins(
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ),
                    RaisedButton(
                      onPressed: () {
                        context
                            .bloc<CounterBloc>()
                            .add(CounterBlocIncrement(1));
                      },
                      child: Text("+",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
              )),
          Flexible(
              flex: 1,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Cubit State Management',
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                        )),
                    BlocBuilder<CountercubitCubit, CountercubitState>(
                        builder: (_, cubitState) => Text(
                            (cubitState is CountercubitStateFilled)
                                ? "${cubitState.value}"
                                : "-",
                            style: GoogleFonts.poppins(
                                fontSize: 35, fontWeight: FontWeight.w600))),
                    RaisedButton(
                      onPressed: () {
                        context.bloc<CountercubitCubit>().cubitIncrement(1);
                      },
                      child: Text("+",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
