import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'bottom_navy_bar.dart';
import 'colors.dart';
import 'package:flutter_app/post.dart';
import 'package:flutter_app/postcard.dart';
import 'dart:math';


Random random = Random();

List<Post> posts = [
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '19 March', likes: 30, comments: 10),
  Post(address: "assets/images/cm${random.nextInt(10)}.jpeg", date: '18 March', likes: 20, comments: 20),

];

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
      body:  Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: GridView.count(
                padding: EdgeInsets.all(5.0),
                crossAxisCount: 3,
                childAspectRatio: 0.9,
                shrinkWrap:true,
                children: posts.map((post) => PostCard(
                    post: post,
                    delete: () {
                      setState(() {
                        posts.remove(post);
                      });
                    }
                )).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
