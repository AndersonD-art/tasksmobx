import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:tarefas/app/controller/login_store.dart';
import 'package:tarefas/app/ui/widgets/custom_icon_button.dart';
import 'package:tarefas/app/ui/widgets/custom_text_field.dart';
import 'package:tarefas/app/routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginStore loginStore = LoginStore();

  late ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    disposer = reaction((_) => loginStore.loggedIn, (loggedIn) {
      if (loginStore.loggedIn)
        Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(32),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets\\Icon.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  color: Colors.yellow[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Observer(
                          builder: (_) {
                            return CustomTextField(
                              hint: 'User',
                              prefix: Icon(Icons.supervisor_account),
                              textInputType: TextInputType.emailAddress,
                              onChanged: loginStore.setEmail,
                              enabled: !loginStore.loading,
                            );
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Observer(
                          builder: (_) {
                            return CustomTextField(
                              hint: 'Password',
                              prefix: Icon(Icons.verified_user),
                              obscure: !loginStore.passwordVisible,
                              onChanged: loginStore.setPassword,
                              enabled: !loginStore.loading,
                              suffix: CustomIconButton(
                                radius: 32,
                                iconData: !loginStore.passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                onTap: loginStore.togglePasswordVisible,
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Observer(builder: (_) {
                          return SizedBox(
                            height: 44,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  primary: Theme.of(context).primaryColor,
                                  onSurface: Theme.of(context)
                                      .primaryColor
                                      .withAlpha(100),
                                  onPrimary: Colors.white,
                                ),
                                child: loginStore.loading
                                    ? CircularProgressIndicator(
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      )
                                    : Text('Login'),
                                onPressed: () => loginStore.loginPressed),
                          );
                        })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
