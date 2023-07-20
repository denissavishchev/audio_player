import 'package:audio_player/constants/app_color.dart';
import 'package:flutter/material.dart';

class PlayerListScreen extends StatefulWidget {
  const PlayerListScreen({Key? key}) : super(key: key);

  @override
  State<PlayerListScreen> createState() => _PlayerListScreenState();
}

class _PlayerListScreenState extends State<PlayerListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(child: Column(
        children: [
          Text('Flume - Kai'.toUpperCase())
        ],
      ),),
    );
  }
}
