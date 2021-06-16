import 'package:flutter/material.dart';
import 'package:persistencia/core/presentation/components/brand/brand_image.dart';
import 'package:persistencia/core/presentation/components/brand/brand_title.dart';
import 'package:persistencia/core/presentation/components/checkbox/checkbox.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BrandTitleWidget(),
            BrandImageWidget(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            _buildWelcomeText(),
            _buildBottomRow(),
          ],
        ),
      ),
    );
  }

  _buildWelcomeText() {
    return Text(
      'Seja bem-vindo(a) ao PeF Delivery',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }

  _buildBottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CheckBoxWidget(),
        TextButton(
          child: Text('Avançar'),
          onPressed: () {},
        ),
      ],
    );
  }
}
