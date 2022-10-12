import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oea_app/ui/layout/layout_base.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
      child: Container(
        child: Column(
          children: [
            CardWidget(
              child: Container(
                child: Text(
                  "Aplicativo criado pelos alunos de ADS e CCP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/banners/banner-devfest-2022.jpeg"),
            CardWidget(
              child: Text("Devfest 2022"),
            ),
          ],
        ),
      ),
    );
  }
}
