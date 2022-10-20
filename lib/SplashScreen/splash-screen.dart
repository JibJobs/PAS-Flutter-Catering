import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pas_flutter_mcnmsi_appcatering/Halaman%20Utama/login_screen.dart';
// import '../../../untitled1/lib/Copasan/login_screen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    timerSS();
  }

  //timer
  timerSS() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return LoginScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 126, 24),
      body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 200),
                child: Image.asset(
                  "Image/depanlogo.png",
                  height: 200,
                  width: 200,
                ),
              )

          ]),

    )
    );
  }

}
