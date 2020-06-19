import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/bloc/user_bloc.dart';
import 'package:flutter_mvvm/ui/widget/user_card.dart';

class MainPage extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of<UserBloc>(context); // trigger warning, ignore issu :  https://github.com/felangel/bloc/issues/587

    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.blueGrey, title: Text("Demo MVVM")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(child: Text("Pick Random User"), 
          onPressed: () {
            userBloc.add(EventUser(randomId: random.nextInt(10) + 1));
          }),
          BlocBuilder<UserBloc, MUserState>(builder: (context,stateUser) => (stateUser is MUserInitial) ? Container() : UserCard(stateUser))
        ],
      ),
    );
  }
}
