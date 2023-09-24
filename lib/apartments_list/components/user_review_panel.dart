import 'package:flutter/material.dart';

class UserReviewPanel extends StatelessWidget {
  const UserReviewPanel({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.6,
      width: size.height * 0.4,
      color: Colors.purple.shade200,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(children: [
                Container(
                  height: 200,
                  child: Text("Review 1"),
                ),
                Container(
                  height: 200,
                  child: Text("Review 2"),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
