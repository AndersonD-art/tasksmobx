import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tarefas/main.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SplashScreen(
          seconds: 4,
          routeName: "/",
          backgroundColor: Theme.of(context).primaryColor,
          navigateAfterSeconds: MyApp(),
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets\\Icon.png'),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: FlareActor(
                  "assets\\loading.flr",
                  animation: "Untitled",
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
