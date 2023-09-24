import 'package:flutter/material.dart';

class ApartmentDescription extends StatelessWidget {
  const ApartmentDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.6,
      color: Colors.lightBlue,
      child: Text("Apartment description"),
    );
  }
}
