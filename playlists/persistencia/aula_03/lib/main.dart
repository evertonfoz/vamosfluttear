import 'package:flutter/material.dart';
import 'package:persistencia/features/produtos/pages/crud.dart';
import 'package:persistencia/features/welcome/data/datasources/welcome_datasource.dart';
import 'package:persistencia/features/welcome/pages/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(PersistenciaApp());
}

class PersistenciaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PeF Delivery',
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
        buttonColor: Colors.blue.shade500,
      ),
      home: WelcomePage(),
    );
  }
}
