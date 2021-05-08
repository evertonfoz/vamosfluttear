import 'package:flutter/material.dart';
import 'package:persistencia/features/produtos/crud/produto_crud_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProdutoCRUDPage(),
    );
  }
}
