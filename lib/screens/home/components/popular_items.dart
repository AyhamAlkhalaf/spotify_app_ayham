import 'package:flutter/material.dart';
import 'package:spotify_app_ayham/Models/Popular.dart';
import 'package:spotify_app_ayham/constants.dart';
import 'package:spotify_app_ayham/screens/home/components/popular_card.dart';


class PopularItems extends StatelessWidget {
  const PopularItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kDefaultPadding),
        child: Row(
          children: [
            ...List.generate(
              demoPopular.length,
              (index) {
                return PopularCard(popularItem: demoPopular[index], index: index);
              }
            )
          ],
        ),
      ),
    );
  }
}