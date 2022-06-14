import 'package:flutter/material.dart';

class BlockSection extends StatelessWidget {
  const BlockSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => {Navigator.of(context).pushNamed('/events')},
              child: Block(
                title: "Eventos",
                icon: Icons.add,
              ),
            ),
            GestureDetector(
              onTap: () => {},
              child: Block(
                title: "Novidades",
                icon: Icons.add,
              ),
            ),
            GestureDetector(
              onTap: () => {},
              child: Block(
                title: "Vagas De Emprego",
                icon: Icons.add,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => {Navigator.of(context).pushNamed('/events')},
              child: Block(
                title: "Eventos",
                icon: Icons.add,
              ),
            ),
            GestureDetector(
              onTap: () => {},
              child: Block(
                title: "Novidades",
                icon: Icons.add,
              ),
            ),
            GestureDetector(
              onTap: () => {},
              child: Block(
                title: "Outros",
                icon: Icons.add,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Block extends StatelessWidget {
  final String title;
  final IconData icon;

  Block({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blue,
        ),
        
        height: 150,
        width: (MediaQuery.of(context).size.width / 3) - 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}
