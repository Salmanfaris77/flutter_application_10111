import 'package:flutter/material.dart';
import 'package:flutter_application_10111/model/eventmodel.dart';
import 'package:flutter_application_10111/view/splash/splash.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'model/eventmodel.g.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>('notes');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
