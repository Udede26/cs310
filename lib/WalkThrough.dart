import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WalkThrough(),
  ));
}

class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State {

  int current_page= 1;
  int total_page = 4;
  List<String> img_url = [
    "https://www.searchenginejournal.com/wp-content/uploads/2020/09/outstanding-social-media-campaigns-5f60d3e4bb13b-1520x800.png",
    "https://images.unsplash.com/photo-1554177255-61502b352de3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c29jaWFsJTIwbWVkaWF8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
    "https://turuncumedya.com/img/search-12.png",
    "https://monoloop.com/wp-content/uploads/2017/08/photo-1511367461989-f85a21fda167.jpg"
  ];
  List<String> app_titles = ["MAIN","DISCOVER","SEARCH","PROFILE"];
  List<String> page_titles = [
    "You can see your feed",
    "See what is happening",
    "Are you looking for someone?",
    "The best person in the world"];
  List<String> captions = [
    "Too boring...",
    "The world is discovering...",
    "Baam, we found it...",
    "Such a mysterious guy..."];

  void nextPage() {
    if(current_page == 4){
      setState(() {
        current_page = 4;
      });

    }
    else{
      setState(() {
        current_page +=1;
      });

    }
  }

  void prevPage() {
    if(current_page == 1)
      {
        setState(() {
          current_page = 1;
        });

      }
    else{
      setState(() {
        current_page -=1;
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          app_titles[current_page-1],
          style: TextStyle(
            color:Color(0xFF757575),
            letterSpacing: -1.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFD1D1D6),
      ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        Text(
         page_titles[current_page-1],
         style: TextStyle(
           fontSize: 32,
           letterSpacing: -1.0,
           color:Color(0xFF229A98),
           fontWeight: FontWeight.w800,

         ),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(img_url[current_page-1]),
          radius: 200.0,
        ),
        Text(
          captions[current_page-1],
          style: TextStyle(
            fontSize: 24,
            letterSpacing: -1.0,
            color:Color(0xFF757575),
            fontWeight: FontWeight.w300,

          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            FlatButton(
              onPressed: prevPage,
                color: Color(0xFFF2F2F7),

                child: Text('Prev',
                style: TextStyle(
                  color:Color(0xFF229A98),
                ),
                ),
            ),
            Text(
              '$current_page'+'/'+'$total_page',
              style:TextStyle(
                color:Color(0xFF229A98),
              ),
            ),
            FlatButton(
              onPressed: nextPage,
              color: Color(0xFFF2F2F7),

              child: Text('Next',
                style: TextStyle(
                  color:Color(0xFF229A98),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    );
  }
}