import 'package:flutter/material.dart';

class CheckBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Text('Não exibir mais'),
      ],
    );
  }
}
