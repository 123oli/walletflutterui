import 'dart:ui';

import 'package:flutter/material.dart';

import 'complete_screen.dart';

class SendMoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Send Money to:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'change',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.add,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 30.0),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Image.asset('assets/profile.png'),
                          ),
                          Text(
                            'Chrish',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),


            Column(
              children: <Widget>[
                Text(
                  '\$400.0',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 70.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFADD1FA),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'USD',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Message',
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 18.0,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF5B2A9D),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CompleteScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
