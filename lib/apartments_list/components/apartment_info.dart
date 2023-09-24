import 'package:flutter/material.dart';

import 'apartment_description.dart';
import 'apartment_picture_card.dart';
import 'user_review_panel.dart';

class ApartmentInfo extends StatelessWidget {
  const ApartmentInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(10.0),
          height: size.height,
          color: Colors.amber.shade100,
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ApartmentPictureCard(size: size),
                    UserReviewPanel(size: size),
                  ],
                ),
                SizedBox(height: 10),
                ApartmentDescription(size: size)
              ],
            ),
          )),
    );
  }
}
