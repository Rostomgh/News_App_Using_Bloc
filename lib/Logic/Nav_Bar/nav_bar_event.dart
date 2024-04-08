part of 'nav_bar_bloc.dart';

@immutable
abstract class NavBarEvent {}

class tabChange extends NavBarEvent {
  final int tabindex;

  tabChange({required this.tabindex});

}
