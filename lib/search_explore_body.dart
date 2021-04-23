import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'bottom_navy_bar.dart';
import 'colors.dart';


class SearchScreen extends StatefulWidget{
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bodyColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          padding: const EdgeInsets.only(top:20),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.buttonColor,
      ),
          child: Padding(
            padding: EdgeInsets.symmetric(),
            child: Row( children: <Widget>[
              Icon(Icons.search,
              color: AppColors.highlightedButtonColor,),
              Expanded(child: TextField(
                decoration: InputDecoration(hintText: "Search by Username"),
              ),
              ),
            ],
         ),
        ),
        ),
      ),
      body: GestureDetector(
        child: new Card(
          elevation: 10,
          child: new Container(
            alignment: Alignment.center,
            child:GridView.builder(
                itemCount: 21,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

                itemBuilder: (BuildContext context, int index) {
                  return Image.network('https://img.icons8.com/carbon-copy/2x/image.png',);
                }),
          ),
        ),
        // After photo view is finished this part will be filled
        onTap: () {},
      )
    );
  }
}
