import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature/config/device/device_dimenssions.dart';
import 'package:nature/modules/onboard/onBoarding_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    playAudio();
    super.initState();
  }

  void playAudio() async {
    final player = AudioPlayer();
    await player
        .play(AssetSource('audio/audio.mp3'))
        .whenComplete(() => navigateToNextPage());
  }

  void navigateToNextPage() {
    Timer(Duration(milliseconds: 3600), () {
      Get.to(() => onBoardingScreen(), transition: Transition.leftToRight);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: DeviceDimenssions.width,
          height: DeviceDimenssions.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_back.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.asset('assets/images/splash11.png',
              fit: BoxFit.cover,
            ),
            ),
          ),
        ),
      );
  }
}
