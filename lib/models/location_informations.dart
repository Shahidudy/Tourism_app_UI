import 'package:flutter/material.dart';
import 'package:international_tourism/photos_url/photo_url.dart';

class LocationInformations {
  final String placeName;
  final String placeLocation;
  final ImageProvider destinationImage;

  LocationInformations(
      {required this.placeName,
      required this.placeLocation,
      required this.destinationImage});
}

List destInfo = [
  LocationInformations(
    placeName: 'Tajmahal',
    placeLocation: 'India',
    destinationImage: AssetImage(cat1),
  ),
  LocationInformations(
    placeName: 'Amazon',
    placeLocation: 'Canda',
    destinationImage: AssetImage(cat2),
  ),
  LocationInformations(
    placeName: 'Tajmahal',
    placeLocation: 'India',
    destinationImage: AssetImage(cat3),
  ),
  LocationInformations(
    placeName: 'Tajmahal',
    placeLocation: 'India',
    destinationImage: AssetImage(cat4),
  ),
];


