import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'loginscreen.dart';

class MyyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyyApp>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutCubic,
    ).drive(Tween(begin: 0, end: 2));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int count=0;
    return GestureDetector(
      onTap: () {
        count++;
       controller
          ..reset()
          ..forward();
        if(count==2)
        {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => splashScrean()));
        }
      },
      child: RotationTransition(
        turns: animation,
        child: Stack(
          children: const [
            Positioned.fill(
              child: FlutterLogo(),
            ),
            Center(
              child: Text(
                'welcome please press me ! ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}