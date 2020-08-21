import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'send_money_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Transactions> _tList = [
      Transactions(
        img: 'assets/profile.png',
        title: 'Service',
        subTitle: 'Spotify',
        amount: 20,
        date: '20 Aug',
      ),
      Transactions(
        img: 'assets/profile.png',
        title: 'Payment Received',
        subTitle: 'from Oliver',
        amount: 20,
        date: '20 Aug',
      ),
      Transactions(
        img: 'assets/profile.png',
        title: 'Transfer',
        subTitle: 'to Luna',
        amount: 20,
        date: '20 Aug',
      ),
      Transactions(
        img: 'assets/profile.png',
        title: 'Service',
        subTitle: 'Spotify',
        amount: 20,
        date: '20 Aug',
      ),
      Transactions(
        img: 'assets/profile.png',
        title: 'Service',
        subTitle: 'Spotify',
        amount: 20,
        date: '20 Aug',
      ),
      Transactions(
        img: 'assets/profile.png',
        title: 'Service',
        subTitle: 'Spotify',
        amount: 20,
        date: '20 Aug',
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF566AD6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Good mroning,',
                            style: GoogleFonts.eagleLake(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          CircleAvatar(
                            child: Image.asset('assets/profile.png'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Train!,',
                            style: GoogleFonts.eagleLake(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            'S10983838',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                  ),
                ),
                Positioned(
                  top: 160.0,
                  left: 16,
                  child: Material(
                    elevation: 12.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: 385,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.account_balance_wallet),
                                  Text(
                                    'Top-up',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.attach_money),
                                  Text(
                                    'transfer',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.remove_from_queue),
                                  Text(
                                    'request',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.compare),
                                  Text(
                                    'invoice',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
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
                    'see all',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        child: CircleAvatar(
                          child: Image.asset('assets/profile.png'),
                        ),
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
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        child: null,
                      ),
                      Text(
                        'Blank',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
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
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        child: null,
                      ),
                      Text(
                        'Blank',
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
            SizedBox(height: 40.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recent Transaction',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _tList.length,
                itemBuilder: (context, index) {
                  Transactions _tr = _tList[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(_tr.img),
                    ),
                    title: Text(_tr.title),
                    subtitle: Text(_tr.subTitle),
                    trailing: Column(
                      children: <Widget>[
                        Text(_tr.amount.toString()),
                        Text(_tr.date)
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SendMoneyPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Transactions {
  String img;
  String title;
  String subTitle;
  int amount;
  String date;
  Transactions({
    this.img,
    this.title,
    this.subTitle,
    this.amount,
    this.date,
  });
}
