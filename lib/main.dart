import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/bloc/user_bloc.dart';
import 'package:flutter_mvvm/ui/page/main_page.dart';

/// Entry Point App
void main() {
  runApp(MyApp());
}

/// Class for build Application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider<UserBloc>(
            create: (BuildContext context) => UserBloc(), child: MainPage())); // render MainPage with BlocProvider 
  }
}
