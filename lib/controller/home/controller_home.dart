import 'package:mobx/mobx.dart';

part 'controller_home.g.dart';

class ControllerHome = ControllerHomeBase with _$ControllerHome;

abstract class ControllerHomeBase with Store {
  @observable
  int index = 0;

  @action
  void setIndex(int value) => index = value;
}