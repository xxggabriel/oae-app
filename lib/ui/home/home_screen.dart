import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oea_app/ui/home/widgets/banners.dart';
import 'package:oea_app/ui/home/widgets/block_section.dart';
import 'package:oea_app/ui/home/widgets/top_bar.dart';
import 'package:oea_app/ui/layout/layout_base.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBase(
      child: Column(
        children: [
          TopBar(),
          Banners(),
          BlockSection()
        ],
      ),
    );
  }
}
