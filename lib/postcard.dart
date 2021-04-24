
import 'package:flutter/material.dart';
import 'post.dart';
import 'colors.dart';


class PostCard extends StatelessWidget {

  final Post post;
  final Function delete;
  PostCard({ this.post, this.delete });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: 150,
        width: 150,
        margin: EdgeInsets.all(2),
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            side:BorderSide(width:0),
            borderRadius: BorderRadius.circular(0),
          ),
          child: FittedBox(child: Image.asset(post.address),fit:BoxFit.cover,),
        ),
      ),
    );
  }
}
