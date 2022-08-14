import 'package:flutter/material.dart';
import 'package:practice_app/screens/details/featured_event_detail.dart';

import '../../../constants.dart';

class FeaturedEvents extends StatelessWidget {
  const FeaturedEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text(
              '近くのイベント',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ]),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              FeaturePlantCard(
                title: "第34回なにわ淀川花火大会",
                country: "大阪",
                price: 100,
                image: "lib/assets/images/hanabi.jpeg",
                press: () {},
              ),
              FeaturePlantCard(
                title: "サマーイベントBBQパーティー！",
                country: "",
                price: 100,
                image: "lib/assets/images/bbq.jpeg",
                press: () {},
              ),
              FeaturePlantCard(
                title: "沖縄に行こう！",
                country: "にほん",
                price: 100,
                image: "lib/assets/images/okinawa.jpeg",
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => const FeaturedEventDetail(),
              ),
        );
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
            ),
            width: size.width * 0.8,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: kDefaultPadding,
              bottom: kDefaultPadding / 2,
            ),
            width: size.width * 0.8,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
