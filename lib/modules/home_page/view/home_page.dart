import 'package:flutter/material.dart';
import 'package:nature/modules/home_page/components/touchable_card.dart';
import 'package:nature/modules/podcasts/podcasts_screen.dart';
import 'package:nature/modules/settings/view/settings_screen.dart';
import 'package:nature/modules/videos/videos_screen.dart';
import 'package:nature/shared/components/components.dart';

import '../../albums/albums_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              navigateTo(context, SettingsScreen());
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
        child: ListView(
          children: [
            Text(
              "Have a look at the beauty of nature!!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            TouchableCard(
              title: 'Images',
              subtutle: '',
              onTap: () {
                navigateTo(context, AlbumScreen());
              },
            ),
            TouchableCard(
              title: 'Podcast',
              subtutle: '',
              onTap: () {
                navigateTo(context, PodcastsScreen());
              },
            ),
            TouchableCard(
              title: 'Videos',
              subtutle: '',
              onTap: () {
                navigateTo(context, VideosScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
