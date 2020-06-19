// Import package
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/api/user_api.dart';
import 'package:flutter_mvvm/models/user_model.dart';
import 'package:meta/meta.dart';

// Get all package need so could import just this file
part 'user_event.dart';
part 'user_state.dart';

// UserBloc class
class UserBloc extends Bloc<UserEvent, MUserState> {
  // InitialState method, could improve if uncomment the constructor
  // and delete logic in usercard builder
  @override
  MUserState get initialState => MUserInitial();

  // Mapping event
  @override
  Stream<MUserState> mapEventToState(
    UserEvent event,
  ) async* {
    try {
      if (event is GetUserEvent) {
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
