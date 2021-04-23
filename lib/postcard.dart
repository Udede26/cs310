
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
        margin: EdgeInsets.all(0),
        child: Card(
          margin: EdgeInsets.fromLTRB(0, 0, 0.0, 0),
          shape: RoundedRectangleBorder(
            side:BorderSide(width:0),
            borderRadius: BorderRadius.circular(0),
          ),
          child: FittedBox(child: Image.network('https://cdn.shopify.com/s/files/1/0533/2089/files/placeholder-images-image_large.png?format=jpg&quality=90&v=1530129081'),fit:BoxFit.fill,),
        ),
      ),
    );
  }
}
