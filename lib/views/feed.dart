

import 'package:flutter_app/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/post_item.dart';
import 'package:flutter_app/colors.dart';



void main() => runApp(MaterialApp(
  home: Feed(),
));

class Feed extends StatefulWidget {
  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title:Text("Feeds"),
        centerTitle:true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal:20),
        itemCount: posts.length,
        itemBuilder: (BuildContext context,int index){
          Map post = posts[index];
          return PostItem(
            img:post['img'],
            name:post['name'],
            dp:post['dp'],
            time:post['time'],
          );
        },


      ),
    );
  }
}
