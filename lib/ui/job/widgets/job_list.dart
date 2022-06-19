import 'package:flutter/widgets.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';

class JobList extends StatefulWidget {
  const JobList({Key? key}) : super(key: key);

  @override
  State<JobList> createState() => _JobListState();
}

class _JobListState extends State<JobList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () => {
                  Navigator.of(context)
                      .pushNamed('/job', arguments: {"id": index})
                },
                child: CardWidget(
                  child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
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
                )),
              );
            })),
      ),
    );
  }
}
