part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class EventUser extends UserEvent {
  final int randomId;
  EventUser({this.randomId});
}
