import 'package:flutter/material.dart';
import 'package:international_tourism/colors/colorss.dart';
import 'package:international_tourism/photos_url/photo_url.dart';
import 'package:international_tourism/place_strings/place_strings.dart';
import 'package:international_tourism/widgets/home_widgets/recomended_cards.dart';

class FantasticCard extends StatelessWidget {
  const FantasticCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 20),
      height: 230,
      decoration: BoxDecoration(color: myWhite),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ReccomendedCard(
            placeName: 'Desert',
            placeLocation: 'Dubai',
            destinationImage: AssetImage(cat4),
            placDetails: desertDetails,
          ),
          ReccomendedCard(
            placeName: 'Sea',
            placeLocation: 'Thailand',
            destinationImage: AssetImage(cat3),
            placDetails: seaDetails,
          ),
          ReccomendedCard(
            placeName: 'Amazon Forest',
            placeLocation: 'USA',
            destinationImage: AssetImage(cat2),
            placDetails: amazonForestDetail,
          ),
          ReccomendedCard(
            placeName: 'Tajmahal',
            placeLocation: 'India',
            destinationImage: AssetImage(cat1),
            placDetails: tajmahalDetails,
          ),
        ],
      ),
    );
  }
}
