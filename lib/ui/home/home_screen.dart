import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oea_app/ui/home/widgets/top_bar.dart';
import 'package:oea_app/ui/splash/splash_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        elevation: 0,
        centerTitle: true,
        title: Text(
          "O que acontece na Estácio",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share),
              ),
            ],
          ),
        ],
      ),

      body: Column( 
        children: [
          TopBar(),
        ],
      ),
    );
  }
}

