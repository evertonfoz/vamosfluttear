import 'package:flutter/material.dart';
import 'package:persistencia/core/presentation/components/brand/brand_image.dart';
import 'package:persistencia/core/presentation/components/brand/brand_title.dart';
import 'package:persistencia/core/presentation/components/buttons/default_text_button.dart';
import 'package:persistencia/core/presentation/components/checkbox/checkbox.dart';
import 'package:persistencia/features/produtos/pages/crud.dart';
import 'package:persistencia/features/welcome/data/datasources/welcome_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
            _buildBottomRow(context),
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

  _buildBottomRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CheckBoxWidget(),
        DefaultTextButton(
          text: 'Avançar',
          textFontSize: 24,
          onPressed: () async {
            var sp = await SharedPreferences.getInstance();
            var ds = WelcomeDataSource(sharedPreferences: sp);

            await ds.registerDontShowAgain(value: true);

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProdutoCRUDPage()));
          },
        ),
      ],
    );
  }
}
