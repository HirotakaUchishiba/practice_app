import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widgets/app_icon.dart';

class EventImageBox extends StatelessWidget {
  const EventImageBox({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
        // It will cover 20% of our total height
        height: size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('lib/assets/images/hanabi.jpeg'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 45,
              left: 20,
              right: 20,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(
                      icon: Icons.arrow_back,
                    ),
                    AppIcon(
                      icon: Icons.more_horiz,
                    ),
                  ]),
            ),
            Positioned(
                left: 0,
                right: 0,
                //Imageのサイズを取得
                top: 340,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
