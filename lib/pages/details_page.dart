import 'package:flutter/material.dart';
import 'package:international_tourism/colors/colorss.dart';
import 'package:international_tourism/pages/home_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.placeName,
    required this.icon,
    required this.destination,
    required this.image,
    required this.placeDetails,
  });
  final String placeName;
  final IconData icon;
  final String destination;
  final ImageProvider image;
  final String placeDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhite,
      appBar: AppBar(
        title: Text(placeName),
      ),
      body: ListView(
        children: [
          Image(
            image: image,
            fit: BoxFit.cover,
          ),
          HeadTitle(myTitle: placeName),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 20, right: 0, bottom: 10, top: 10),
                child: Icon(icon),
              ),
              Container(
                margin: EdgeInsets.only(left: 0, right: 20),
                child: Text(destination),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              placeDetails,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: RichText(
              text: TextSpan(
                  text: 'Duration : ',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '12 Days',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: RichText(
              text: TextSpan(
                  text: 'Distance : ',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '5000 Kilometers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ]),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(color: myGrey),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Text(
              'Book Now',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
          )
        ],
      ),
    );
  }
}
