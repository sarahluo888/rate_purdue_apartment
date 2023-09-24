import 'package:flutter/material.dart';

// This saves the context
// You first need to add this to root page (which would be the class that hosts nagivation bar for us):
// void initState() {
//    super.initState();
//   ContextKeeper().init(context);
//  }
// Navigator.pushNamedAndRemoveUntil(ContextKeeper.buildContext, 'view without navigation bar', (_) => false);
//
//

class ContextKeeper {
  static late BuildContext buildContext;

  void init(BuildContext context) {
    buildContext = context;
  }
}
