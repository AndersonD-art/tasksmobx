import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisible() => passwordVisible = !passwordVisible;

  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = "";

  @action
  void setPassword(String value) => password = value;

  @observable
  bool loggedIn = false;

  @computed
  bool get isPasswordValid => password.length > 3;

  @computed
  bool get isEmailValid => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);

  @computed
  Function? get loginPressed =>
      (isEmailValid && isPasswordValid && !loading) ? login : null;

  @observable
  bool loading = false;

  @action
  Future<void> login() async {
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    loading = false;
    loggedIn = true;
  }
}
