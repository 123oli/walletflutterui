import 'package:flutter/material.dart';
import 'package:walletappflutterui/home_page.dart';

class CompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).push(_createRoute());
        },
        child: Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF5B2A9D),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Text(
              'Done',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Color(0xFF34D636),
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(80.0)),
              child: Center(
                child: Icon(
                  Icons.check,
                  color: Color(0xFF34D636),
                  size: 40.0,
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              'Payment successful!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '\$400.0',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10.0),
                Center(
                  child: Text(
                    'USD',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
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
    pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
