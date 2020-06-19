part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class MUserState extends UserState {
  final String name, email, avatar;
  final int id;

  /// constructor
  MUserState({this.id, this.name, this.email, this.avatar});
  int get getId => this.id;
}

class MUserInitial extends MUserState {
  final String name, email, avatar;
  final int id;

  MUserInitial({this.id, this.name, this.email, this.avatar});
}
