import 'package:flutter/material.dart';

class ApartmentPictureCard extends StatelessWidget {
  const ApartmentPictureCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.6,
        width: size.height * 0.4,
        color: Colors.purple.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: size.height * 0.6 * 0.7,
              width: size.width * 0.4 * 0.7,
              color: Colors.green.shade300,
              child: Text("Big preview picture"),
            ),
            Container(
              height: size.height * 0.6 * 0.3,
              width: size.width * 0.4 * 0.3,
              color: Colors.green.shade100,
              child: Text("Small pictures panel"),
            ),
          ],
        ));
  }
}
