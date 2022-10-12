import 'package:flutter/material.dart';
import 'package:oea_app/ui/layout/layout_base.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
      child: Column(
        children: [
          CardWidget(
            child: Text(
              'O que acontece na Estácio',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CardWidget(
            child: Column(
              children: [
                Text(
                  'O aplicativo OAE, foi idealizado pelo coordenador, Daniel Gomes, e projetado pelo aluno de Análise e Desenvolvimento de Sistemas, Gabriel Oliveira.',
                ),
              ],
            ),
          ),
          CardWidget(
            child: Text(
              'Apoio',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CardWidget(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/logo/logo-umobi.jpeg',
                  width: 80,
                ),
                Image.asset(
                  'assets/images/logo/estacio-logo-white.png',
                  width: 150,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
