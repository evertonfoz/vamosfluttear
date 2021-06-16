import 'package:flutter/material.dart';
import 'package:persistencia/features/produtos/pages/crud.dart';
import 'package:persistencia/features/welcome/pages/welcome.dart';

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
      ),
      home: WelcomePage(),
    );
  }
}
