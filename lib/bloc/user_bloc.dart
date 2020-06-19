import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/api/user_api.dart';
import 'package:flutter_mvvm/models/user_model.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<EventUser, MUserState> {
  @override
  MUserState get initialState => MUserInitial();

  @override
  Stream<MUserState> mapEventToState(
    UserEvent event,
  ) async* {
    try {
      if (event is EventUser) {
        MUser userFromAPI = await UserAPI.getUser(event.randomId.toString());
        MUserState user = MUserState(
          id: userFromAPI.id,
          name: userFromAPI.name,
          email: userFromAPI.email,
          avatar: userFromAPI.avatar
        );
        yield user;
      }
    } catch (e) {
      // debugPrint("$e");
    }
  }
}
