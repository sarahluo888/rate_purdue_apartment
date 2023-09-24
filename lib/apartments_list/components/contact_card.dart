import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 100,
        width: 200,
        color: Colors.pink,
        child: Text("Office hours + contacts"),
      ),
    );
  }
}
