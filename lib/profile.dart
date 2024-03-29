import 'package:firebase_database/firebase_database.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'postCard.dart';
import 'package:flutter/material.dart';
import 'post.dart';
import 'styles.dart';
import 'colors.dart';
import 'edit_profile.dart';
import 'dart:math';


Random random = Random();

class ProfileView extends StatefulWidget {

  bool hidebar;
  ProfileView(this.hidebar);
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

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

];

class _ProfileViewState extends State<ProfileView>{
  static FirebaseDatabase referenceDb = FirebaseDatabase.instance;
  int postCount = posts.length;



  @override
  Widget build(BuildContext context) {
    final ref = referenceDb.reference();
    return Scaffold(
        backgroundColor: AppColors.bodyColor,
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(
              fontFamily: 'BrandonText',
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColors.mainColor,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/cm${random.nextInt(10)}.jpeg"),
                    radius: 44.0,
                  ),

                  SizedBox(width: 8,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.mainTexts,
                        ),
                      ),

                      SizedBox(height: 10.0,),

                      Text(
                        '@user',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.subTexts,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      RaisedButton(
                        child: Text('Edit Profile'),
                        color: AppColors.buttonColor,
                        onPressed: () {Navigator.of(context,rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return editprofile();
                            },
                          ),
                        );
                        },
                      ),
                      RaisedButton(
                        child: Text('Add Post'),
                        color: AppColors.buttonColor,
                        onPressed: () async {


                          
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          String id = prefs.getString('uid');

                          ref.child("users").child(id).child('posts').child('count').once().then((DataSnapshot data) async {

                          ref.child('users').child(id).child('posts').child(data.value.toString()).child('description').set("Cok guzel gunbatimi").asStream();
                          ref.child('users').child(id).child('posts').child(data.value.toString()).child('likes').push().set('dummy').asStream();
                          ref.child('users').child(id).child('posts').child(data.value.toString()).child('comments').child('comment').child('id').set('user').asStream();
                          ref.child('users').child(id).child('posts').child(data.value.toString()).child('comments').child('comment').child('content').set('Gercekten cok guzel').asStream();
                          ref.child('users').child(id).child('posts').child(data.value.toString()).child('repost').push().set('dummy').asStream();
                          ref.child('users').child(id).child('posts').child(data.value.toString()).child('date').set('1.2.3').asStream();
                          ref.child('users').child(id).child('posts').child('count').set(data.value + 1).asStream();
                          });
                        },
                      ),
                    ],
                  ),

                ],
              ),


              Divider(
                color: AppColors.bodyColor,
                height: 20,
                thickness: 0.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Posts',
                        style: TextStyle(
                          color: AppColors.subTexts,
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      Text(
                        '$postCount',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.subTexts,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.subTexts,
                        ),
                      ),

                      Text(
                        '189',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.subTexts,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Following',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.subTexts,
                        ),
                      ),

                      Text(
                        '1290',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.subTexts,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Divider(
                color: AppColors.bodyColor,
                height: 20,
                thickness: 0.0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 500,
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
                  )
                ],
                    ),
            ],
          ),
        )
    );
  }
}

