import 'package:flutter/material.dart';
import 'package:international_tourism/pages/details_page.dart';

class ReccomendedCard extends StatelessWidget {
  const ReccomendedCard(
      {super.key,
      required this.placeName,
      required this.placeLocation,
      required this.destinationImage,
      required this.placDetails});

  final String placeName;
  final String placeLocation;
  final ImageProvider destinationImage;
  final String placDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              placeName: placeName,
              destination: placeLocation,
              image: destinationImage,
              icon: Icons.location_on,
              placeDetails: placDetails,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 230, 228, 228)),
            borderRadius: BorderRadius.circular(30)),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            margin: EdgeInsets.only(left: 0, top: 0),
            padding: EdgeInsets.all(8),
            height: 200,
            decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: destinationImage, fit: BoxFit.cover)),
                ),
                Text(
                  placeName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      // color: Colors.amber,
                      child: Icon(
                        Icons.add_location_alt,
                        size: 15,
                        color: const Color.fromARGB(255, 115, 94, 31),
                      ),
                    ),
                    Container(
                      height: 20,
                      // color: Colors.green,
                      child: Text(
                        placeLocation,
                        style:
                            TextStyle(color: Color.fromARGB(255, 115, 94, 31)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
