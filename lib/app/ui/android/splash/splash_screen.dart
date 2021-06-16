import 'dart:async';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void navigationToNextPage() {
    Navigator.pushReplacementNamed(context, '/login');
  }

  startSplashScreenTimer() async {
    var _duration = Duration(seconds: 4);
    return Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Stack(
      children: [
        Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Hero(
                      tag: 'logo',
                      child: Image.asset(
                        'assets\\Icon.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 20,
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
          ),
        )
      ],
    );
  }
}
