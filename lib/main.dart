import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: StarCard(),
));

class StarCard extends StatefulWidget {
  @override
  _StarCardState createState() => _StarCardState();
}

class _StarCardState extends State<StarCard> {
  int starLevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Star ID Card",
          style: TextStyle(
            fontSize: 25.0,
          )
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Harvey.jpg'),
                  radius: 50.0,
                ),
              ),

              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              Container(
                child: Text(
                  "NAME",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
              ),

              SizedBox(height: 10.0),

              Container(
                child: Text(
                  "Harvey",
                  style: TextStyle(
                    color: Colors.amber[200],
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),

              SizedBox(height: 30.0,),

              Container(
                child: Text(
                  "CURRENT STAR LEVEL",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
              ),

              SizedBox(height: 10.0),
              
              Container(
                child: Text(
                  '$starLevel',
                  style: TextStyle(
                    color: Colors.amber[200],
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),

              SizedBox(height: 30.0),

              Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "harvey.inc@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              starLevel ++;
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.redAccent,
        ),
      );
  }
}