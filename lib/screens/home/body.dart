import 'package:flutter/material.dart';
import 'package:practice_app/constants.dart';

import 'featured_events.dart';
import 'header_with_searchbox.dart';
import 'recommend_events.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Container(
        decoration:BoxDecoration(
           boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 50,
                color: Colors.grey.withOpacity(0.23),
              ),
            ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            RecommendsEvents(),
            SizedBox(
              height: 30,
            ),
            FeaturedEvents(),
           const  SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}