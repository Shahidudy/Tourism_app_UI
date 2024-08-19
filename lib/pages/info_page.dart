import 'package:flutter/material.dart';
import 'package:international_tourism/colors/colorss.dart';
import 'package:international_tourism/pages/nav_page.dart';
import 'package:international_tourism/photos_url/photo_url.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information about Tourism'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              'Tourism is a social, cultural and economic phenomenon which entails the movement of people to countries or places outside their usual environment for personal or business/professional purposes. These people are called visitors (which may be either tourists or excursionists; residents or non-residents) and tourism has to do with their activities, some of which involve tourism expenditure.',
              style: TextStyle(),
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image:
                  DecorationImage(image: AssetImage(cat1), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
                "Activity/activities: In tourism statistics, the term activities represent the actions and behaviors of people in preparation for and during a trip in their capacity as consumers (IRTS 2008, 1.2)."),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image:
                  DecorationImage(image: AssetImage(cat2), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              "Activity (principal): The principal activity of a producer unit is the activity whose value added exceeds that of any other activity carried out within the same unit \nActivity (productive): The (productive) activity carried out by a statistical unit is the type of production in which it engages. It has to be understood as a process, i.e. the combination of actions that result in a certain set of products. The classification of productive activities is determined by their principal output.",
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image:
                  DecorationImage(image: AssetImage(cat3), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              "Administrative data: Administrative data is the set of units and data derived from an administrative source. This is a data holding information collected and maintained for the purpose of implementing one or more administrative regulations.\nAdventure tourism: Adventure tourism is a type of tourism which usually takes place in destinations with specific geographic features and landscape and tends to be associated with a physical activity, cultural exchange, interaction and engagement with nature. This experience may involve some kind of real or perceived risk and may require significant physical and/or mental effort.\nAdventure tourism generally includes outdoor activities such as mountaineering, trekking, bungee jumping, rock climbing, rafting, canoeing, kayaking, canyoning, mountain biking, bush walking, scuba diving. Likewise, some indoor adventure tourism activities may also be practiced.",
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image:
                  DecorationImage(image: AssetImage(cat4), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              "Aggregated data: The result of transforming unit level data into quantitative measures for a set of characteristics of a population.\nAggregation: A process that transforms microdata into aggregate-level information by using an aggregation function such as count, sum average, standard deviation, etc.\nAnalytical unit: Entity created by statisticians, by splitting or combining observation units with the help of estimations and imputations.\nBalance of payments: The balance of payments is a statistical statement that summarizes transactions between residents and non-residents during a period. It consists of the goods and services account, the primary income account, the secondary income account, the capital account, and the financial account (BPM6, 2.12).\nBias: An effect which deprives a statistical result of representativeness by systematically distorting it, as distinct from a random error which may distort on any one occasion but balances out on the average.",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NavPage()));
            },
            child: Container(
              height: 50,
              margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: myGrey),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(
                'Explore Now',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
          )
        ],
      ),
    );
  }
}
