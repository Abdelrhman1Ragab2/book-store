
import 'package:asd/moduls/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'moduls/vv.dart';

void main()
async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: splashScrean(),
      ),
    ),
  );
}


