import 'package:flutter/material.dart';
import 'package:international_tourism/colors/colorss.dart';
import 'package:international_tourism/fontStyles/font_styles.dart';
import 'package:international_tourism/pages/details_page.dart';
import 'package:international_tourism/photos_url/photo_url.dart';
import 'package:international_tourism/place_strings/place_strings.dart';
import 'package:international_tourism/widgets/home_widgets/fantastic_card.dart';
import 'package:international_tourism/widgets/home_widgets/recomded_cards.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhite,
      body: ListView(children: [
        Container(
          // padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(left: 20),
          height: 40,
          color: myWhite,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundImage: AssetImage(avatar1),
                  // radius: 10,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              RichText(
                text: TextSpan(
                    text: 'Hello,',
                    style: TextStyle(color: myBlack),
                    children: [
                      TextSpan(
                          text: ' Batool',
                          style: TextStyle(fontWeight: boldFont))
                    ]),
              ),
            ],
          ),
        ),
        HeadTitle(
          myTitle: 'Explore New Destinations',
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              // margin: EdgeInsets.only(left: 20, right: 20),
              height: 30,
              decoration: BoxDecoration(
                  color: myWhite, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search your destination',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: myBlack,
                        child: Icon(
                          Icons.arrow_downward,
                          color: myWhite,
                          size: 15,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),

        //CATEGORY
        Container(
          margin: EdgeInsets.only(top: 6),
          child: HeadTitle(myTitle: 'Category'),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        //CATEGORY ROW
        Container(
          height: 40,
          padding: EdgeInsets.only(left: 10, right: 3, bottom: 2),
          decoration: BoxDecoration(color: myWhite),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        placeName: 'Tajmahal',
                        icon: Icons.location_on,
                        destination: 'India',
                        image: AssetImage(cat1),
                        placeDetails: tajmahalDetails,
                      ),
                    ),
                  );
                },
                child: CategoryRow(
                    categoryText: 'Tajmahal', categoryImage: AssetImage(cat1)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        placeName: 'Amazon Forest',
                        icon: Icons.location_on,
                        destination: 'South America',
                        image: AssetImage(cat2),
                        placeDetails: amazonForestDetail,
                      ),
                    ),
                  );
                },
                child: GestureDetector(
                  child: CategoryRow(
                      categoryText: 'Forest', categoryImage: AssetImage(cat2)),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          placeName: 'Sea',
                          icon: Icons.location_on,
                          destination: 'India',
                          image: AssetImage(cat3),
                          placeDetails: seaDetails,
                        ),
                      ),
                    );
                  },
                  child: CategoryRow(
                      categoryText: 'Sea', categoryImage: AssetImage(cat3))),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        placeName: 'Desert',
                        icon: Icons.location_on,
                        destination: 'Dubai',
                        image: AssetImage(cat4),
                        placeDetails: desertDetails,
                      ),
                    ),
                  );
                },
                child: CategoryRow(
                    categoryText: 'Desert', categoryImage: AssetImage(cat4)),
              ),
            ],
          ),
        ),

        //RECOMMENDED
        Container(
          margin: EdgeInsets.only(top: 6),
          child: HeadTitle(myTitle: 'Recomended'),
        ),

        //RECOMMENDED CARD
        RecomdedCards(),

        SizedBox(
          height: 10,
        ),

        //FANTASTIC PLACES
        Container(
          margin: EdgeInsets.only(top: 6),
          child: HeadTitle(myTitle: 'Fantastic Places'),
        ),

        //FANTASTIC CARD
        FantasticCard(),

        SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}

class HeadTitle extends StatelessWidget {
  const HeadTitle({super.key, required this.myTitle});
  final String myTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      height: 40,
      color: myWhite,
      child: Text(
        myTitle,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}

class CategoryRow extends StatelessWidget {
  const CategoryRow(
      {super.key, required this.categoryText, required this.categoryImage});
  final String categoryText;
  final ImageProvider categoryImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
      ),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: EdgeInsets.only(left: 3, right: 5),
          height: 30,
          // width: 110,
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 231, 230, 230)),
              color: myWhite,
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Container(
                height: 30,
                // color: Colors.green,
                child: CircleAvatar(
                  backgroundImage: categoryImage,
                ),
              ),
              Container(
                height: 30,
                // color: Colors.blue,
                child: Center(
                    child: Text(
                  categoryText,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
