import 'package:flutter/widgets.dart';
import 'package:oea_app/ui/layout/layout_base.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Programador Backend",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Empresa: Umobi",
                          style: TextStyle(
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Cidade: Goiânia",
                          style: TextStyle(
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Salário: Não informado",
                          style: TextStyle(
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Tipo: Estágio",
                          style: TextStyle(
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Image.network(
                      "https://media-exp1.licdn.com/dms/image/C510BAQHbrA33F4SrkA/company-logo_200_200/0/1519882113370?e=2147483647&v=beta&t=oK8-5pSfyBFocx5d0elZaM1-26Ri873mOuHCInazDgo",
                      height: 80,
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  "Sobre a empresa:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text("""Empresa de Outsourcing em desenvolvimento e tecnologias para internet.\n
A Umobi trabalha com tecnologia de ponta para entregar as melhores soluções WEB, totalmente cross-browser e cross-platform, desenvolvimento mobile, RIA e aplicações.\n
Nossa missão é entregar aplicações WEB de alta qualidade, compatibilidade e desempenho."""),

                SizedBox(height: 20,),
                Text(
                  "Descrição da vaga:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text("""
Buscamos um profissional com boa comunicação, que tenha facilidade de se relacionar com pessoas e que esteja constantemente se atualizando em busca de novos conhecimentos da área.

Essa vaga se destina para todo o Brasil :)

VAGA PJ

Responsabilidades e atribuições

Domínio da Linguagem C#

Nest.js
MySql
Redis
AWS (RDS, LAMBDA e API Gateway)


Diferencial:
 conhecimentos de CI/CD com gitlab

Benefícios


    Vale-Alimentação;
    Férias Remunerada;
    4,2% de pagamento adicional para estimo de uma previdência pessoal
    Reembolso academia;
    Acesso a plataformas de cursos;
    Aula de inglês
    Auxilio Estudos
    Fast New Hobby
    Bônus Certificação
    Day Off
    FastBike
    Fast Amigo
    Seguro de Vida;



Todas as nossas vagas são abertas para pessoas com deficiência
""")
              ],
            )));
  }
}
