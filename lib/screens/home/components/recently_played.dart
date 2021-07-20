import 'package:flutter/material.dart';
import 'package:spotify_app_ayham/Models/RecentlyPlay.dart';
import 'package:spotify_app_ayham/constants.dart';
import 'package:spotify_app_ayham/screens/home/components/recently_played_card.dart';


class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kDefaultPadding),
      child: Row(
        children: [
          ...List.generate(
            demoRecentlyPlayed.length,
            (index) {
              return RecentlyPlayCard(recentPlayItem: demoRecentlyPlayed[index], index: index);
            }
          )
        ],
      ),
    );
  }
}