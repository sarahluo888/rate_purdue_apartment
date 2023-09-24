import 'package:flutter/material.dart';

import 'components/apartment_info.dart';
import 'components/apartment_list_widget.dart';
import 'components/contact_card.dart';

class ApartmentScreen extends StatefulWidget {
  const ApartmentScreen({Key? key}) : super(key: key);

  @override
  State<ApartmentScreen> createState() => _ApartmentScreenState();
}

class _ApartmentScreenState extends State<ApartmentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate My Apartment"),
        //elevation: 0.0,
        //backgroundColor: Colors.white,
        // title: Text(
        // "Search",
        // style: TextStyle(color: Colors.black),
        //),
        centerTitle: true,
        bottom: PreferredSize(
          //preferredSize: Size.fromHeight(kToolbarHeight),
          preferredSize: Size.fromHeight(30.0),
          child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 60.0, vertical: 5.0),
              //  padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                  color: Colors.grey[300],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.search, color: Colors.grey),
                      Expanded(
                        child: TextField(
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration.collapsed(
                            hintText: ' Search',
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Row(
              children: <Widget>[
                ApartmentList(),
                ApartmentInfo(),
              ],
            ),
          ),
          ContactCard(),
        ],
      ),
    );
  }
}
