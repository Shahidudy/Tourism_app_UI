import 'package:flutter/material.dart';
import 'package:international_tourism/colors/colorss.dart';
import 'package:international_tourism/photos_url/photo_url.dart';
import 'package:international_tourism/place_strings/place_strings.dart';
import 'package:international_tourism/widgets/home_widgets/recomended_cards.dart';

class RecomdedCards extends StatelessWidget {
  const RecomdedCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 20),
      height: 210,
      decoration: BoxDecoration(color: myWhite),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ReccomendedCard(
            placeName: 'Burj Khalifa',
            placeLocation: 'Dubai',
            destinationImage: AssetImage(cat5),
            placDetails: burjKhalifaDetails,
          ),
          ReccomendedCard(
            placeName: 'Burj Al-Arab',
            placeLocation: 'UAE',
            destinationImage: AssetImage(cat6),
            placDetails: burjArabDetails,
          ),
          ReccomendedCard(
            placeName: 'Palm Jumaira',
            placeLocation: 'Dubai',
            destinationImage: AssetImage(cat7),
            placDetails: palmJumairaDetails,
          ),
          ReccomendedCard(
            placeName: 'Grand Masjid',
            placeLocation: 'Abu dhabi',
            destinationImage: AssetImage(cat8),
            placDetails: grandMosqueAbuDhbaiDetail,
          ),
        ],
      ),
    );
  }
}
