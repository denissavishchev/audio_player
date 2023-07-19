import 'package:audio_player/constants/app_color.dart';
import 'package:audio_player/model/music_model.dart';
import 'package:flutter/material.dart';
import '../widget/neu_button.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {

  int _currentItemPlaying = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeuButton(size: 60,
                    child: Icon(musicList[_currentItemPlaying].isFav
                      ? Icons.favorite
                      : Icons.favorite_border, color: AppColor.secondaryTextColor,),),
                  Text('Playing now'.toUpperCase(),
                    style: const TextStyle(color: AppColor.secondaryTextColor, fontSize:  14, fontWeight: FontWeight.bold),),
                  const NeuButton(size: 60, child: Icon(Icons.menu, color: AppColor.secondaryTextColor,),),
                ],
              ),
              NeuButton(
                size: size.width * 0.8,
                distance: 20,
                padding: 10,
                imageUrl: musicList[_currentItemPlaying].imageUrl,
              ),
              Text(musicList[_currentItemPlaying].name,
                style: const TextStyle(
                  color: AppColor.primaryTextColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(musicList[_currentItemPlaying].artist,
                style: const TextStyle(
                  color: AppColor.secondaryTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


