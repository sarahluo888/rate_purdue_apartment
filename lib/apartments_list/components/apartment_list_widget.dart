import 'package:flutter/material.dart';

class ApartmentList extends StatelessWidget {
  const ApartmentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.2,
      height: size.height,
      color: Colors.yellow,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(children: [
                Container(
                  height: 500,
                  child: Text("Apartment 1"),
                ),
                Container(
                  height: 500,
                  child: Text("Apartment 2"),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
