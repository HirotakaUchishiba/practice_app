import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecommendsEvents extends StatelessWidget {
  const RecommendsEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text(
              'おすすめのイベント',
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
              RecommendPlantCard(
                image: "lib/assets/images/okinawa.jpeg",
                title: "フライボード体験会in沖縄🏄",
                country: "沖縄県那覇市",
                price: 440,
                press: () {},
              ),
              RecommendPlantCard(
                image: "lib/assets/images/bbq.jpeg",
                title: "サマーイベントBBQパーティ！",
                country: "東京都新宿区",
                price: 440,
                press: () {},
              ),
              RecommendPlantCard(
                image: "lib/assets/images/image_3.png",
                title: "Samantha",
                country: "Russia",
                price: 440,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
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
      onTap: () {
        print('aaa');
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
