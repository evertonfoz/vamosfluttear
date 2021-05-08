import 'package:flutter/material.dart';

class ProdutoCRUDPage extends StatefulWidget {
  ProdutoCRUDPage();

  @override
  _ProdutoCRUDPageState createState() => _ProdutoCRUDPageState();
}

class _ProdutoCRUDPageState extends State<ProdutoCRUDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados de Produto"),
      ),
      // Nome, Descrição, Valor, Imagem
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nome'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Descrição'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Valor'),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Stack(
                // alignment: Alignment.bottomRight,
                children: [
                  FlutterLogo(
                    size: 200,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.photo_camera,
                      size: 48,
                    ),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 200),
              child: ElevatedButton.icon(
                icon: Icon(Icons.save),
                label: Text('Gravar'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
