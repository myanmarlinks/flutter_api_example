import 'package:api_example/network/api_service.dart';
import 'package:api_example/ui/my_home.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

void main() {
  _setupLogging();
  runApp(MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) => {
    print("${rec.level.name}: ${rec.time} : ${rec.message}")
  });
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => ApiService.create(),
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.blueAccent
        ),
        home: MyHome(),
      ),
    );

  }
}
