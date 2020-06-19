// import package
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/bloc/user_bloc.dart';
import 'package:flutter_mvvm/ui/widget/user_card.dart';

/// Class for MainPage
class MainPage extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    // UserBloc yang akan memberikan notifikasi jika ada perubahan. Cek UserBloc class
    UserBloc userBloc = BlocProvider.of<UserBloc>(context); // trigger warning, ignore issu :  https://github.com/felangel/bloc/issues/587

    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.blueGrey, title: Text("Demo MVVM")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(child: Text("Pick Random User"), 
          onPressed: () {
            // memberikan perubahan bahwa ada event GetUseEvent
            userBloc.add(GetUserEvent(randomId: random.nextInt(10) + 1));
          }),
          // BlocBuilder yang akan merender bila menerima perubahan
          BlocBuilder<UserBloc, MUserState>(builder: (context,stateUser) => (stateUser is MUserInitial) ? Container() : UserCard(stateUser))
        ],
      ),
    );
  }
}
