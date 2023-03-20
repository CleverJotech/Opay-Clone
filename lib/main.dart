//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:image/image.dart' as IMG;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'opayClone_V1',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: clonedAppBar(),
        body: clonedAppBody(),
        bottomNavigationBar: clonedNavigationBar(),
      ),
    );
  }
}
class clonedNavigationBar extends StatefulWidget{
  clonedNavigationBar({Key? key}): super(key: key);
  @override
  _clonedNavigationBarState createState() => _clonedNavigationBarState();
}

class _clonedNavigationBarState extends State<clonedNavigationBar>{
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Home Page', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
    Text('Rewards', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
    Text('Finance', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
    Text('Cards', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
    Text('Me', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


@override
Widget build(BuildContext context) {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.circle_outlined,
          size: 25,
        ),
        label: 'Home',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.diamond_sharp,
          size: 25,
        ),
        label: 'Rewards',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.auto_graph_outlined,
          size: 25,
        ),
        label: 'Finance',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.add_card_sharp,
          size: 25,
        ),
        label: 'Cards',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.perm_identity_outlined,
          size: 25,
        ),
        label: 'Me',
        backgroundColor: Colors.white,
      ),
    ],
    type: BottomNavigationBarType.fixed,
    currentIndex: _selectedIndex,
    selectedItemColor: Color.fromARGB(255, 24, 179, 106),
    unselectedItemColor: Colors.black45,
    selectedFontSize: 10.0,
    unselectedFontSize: 10.0,
    unselectedLabelStyle: TextStyle(color: Colors.black),
    showUnselectedLabels: true,

    iconSize: 20.0,
    onTap: _onItemTapped,
    elevation: 90.0,
  );
}
}
  ListView clonedAppBody() {
    return ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 17.0,
              ),
              width: 325.0,
              height: 145.0,
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 24, 179, 106),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 11.0),
                            child: Row(
                              children: [
                                Text(
                                  'Total Balance',
                                  style: TextStyle(
                                    color: Color.fromARGB(200, 255, 255, 255),
                                    fontSize: 11.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Divider(
                                  indent: 20.0,
                                  thickness: 30.0,
                                  height: 5.0,
                                ),
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Color.fromARGB(200, 255, 255, 255),
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Divider(
                                indent: 6.0,
                              ),
                              Icon(
                                Icons.monetization_on_outlined,
                                color: Color.fromARGB(230, 255, 255, 255),
                                size: 29.0,
                              ),
                              Text(
                                '300.00',
                                style: TextStyle(
                                  color: Color.fromARGB(230, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 29.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        indent: 50.0,
                        thickness: 30.0,
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 7.0,
                        ),
                        child: Text(
                          'Transaction History',
                          style: TextStyle(
                            color: Color.fromARGB(200, 255, 255, 255),
                            fontSize: 11.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3.0,
                          horizontal: 2.0,
                        ),
                        child: Icon(
                          Icons.navigate_next_sharp,
                          color: Color.fromARGB(200, 255, 255, 255),
                          size: 20.0,
                          semanticLabel: 'Transaction history',
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 7.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.wallet_rounded,
                              size: 41.0,
                              color: Color.fromARGB(200, 255, 255, 255),
                            ),
                            Text(
                              'Add Money',
                              style: TextStyle(
                                color: Color.fromARGB(220, 255, 255, 255),
                                fontSize: 11.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.transform_rounded,
                              size: 41.0,
                              color: Color.fromARGB(200, 255, 255, 255),
                            ),
                            Text(
                              'Transfer',
                              style: TextStyle(
                                color: Color.fromARGB(220, 255, 255, 255),
                                fontSize: 11.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.money_off,
                              size: 41.0,
                              color: Color.fromARGB(200, 255, 255, 255),
                            ),
                            Text(
                              'Withdraw',
                              style: TextStyle(
                                color: Color.fromARGB(220, 255, 255, 255),
                                fontSize: 11.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            child: Text(
              'Payment',
              style: TextStyle(
                color: Color.fromARGB(255, 74, 4, 88),
                fontSize: 14.6,
                fontWeight: FontWeight.w600,
                height: -1.0,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Divider(
                    indent: 20.0,
                    endIndent: 15.0,
                  ),
                  Column(
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(200, 24, 179, 106),
                            ),
                            color: Color.fromARGB(45, 0, 200, 0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //color: Colors.greenAccent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.install_mobile_rounded,
                                size: 20.0,
                                color: Color.fromARGB(200, 24, 179, 106),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      Text(
                        'Airtime',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 20.0,
                    endIndent: 18.0,
                  ),
                  Column(
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(200, 24, 179, 106),
                            ),
                            color: Color.fromARGB(45, 0, 200, 0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //color: Colors.greenAccent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.lte_mobiledata_sharp,
                                size: 20.0,
                                color: Color.fromARGB(200, 24, 179, 106),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      Text(
                        'Data',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 23.0,
                    endIndent: 20.0,
                  ),
                  Column(
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(200, 24, 179, 106),
                            ),
                            color: Color.fromARGB(45, 0, 200, 0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //color: Colors.greenAccent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.sports_baseball,
                                size: 20.0,
                                color: Color.fromARGB(200, 24, 179, 106),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      Text(
                        'Betting',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  Column(
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(200, 24, 179, 106),
                            ),
                            color: Color.fromARGB(45, 0, 200, 0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //color: Colors.greenAccent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.tv,
                                size: 20.0,
                                color: Color.fromARGB(200, 24, 179, 106),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      Text(
                        'TV',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 25.0,
                color: Colors.white,
              ),
              Row(
                children: [
                  Divider(
                    indent: 20.0,
                    endIndent: 15.0,
                  ),
                  Column(
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(200, 24, 179, 106),
                            ),
                            color: Color.fromARGB(45, 0, 200, 0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //color: Colors.greenAccent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.electric_bolt_sharp,
                                size: 20.0,
                                color: Color.fromARGB(200, 24, 179, 106),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      Text(
                        'Electricity',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 18.0,
                    endIndent: 18.0,
                  ),
                  Column(
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(200, 24, 179, 106),
                            ),
                            color: Color.fromARGB(45, 0, 200, 0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //color: Colors.greenAccent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.settings_input_antenna_rounded,
                                size: 20.0,
                                color: Color.fromARGB(200, 24, 179, 106),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      Text(
                        'Internet',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 18.0,
                    endIndent: 18.0,
                  ),
                  Column(
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(200, 24, 179, 106),
                            ),
                            color: Color.fromARGB(45, 0, 200, 0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //color: Colors.greenAccent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.school,
                                size: 20.0,
                                color: Color.fromARGB(200, 24, 179, 106),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      Text(
                        'School&Exam',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 18.0,
                    endIndent: 18.0,
                  ),
                  Column(
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(200, 24, 179, 106),
                            ),
                            color: Color.fromARGB(45, 0, 200, 0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //color: Colors.greenAccent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.move_up_rounded,
                                size: 20.0,
                                color: Color.fromARGB(200, 24, 179, 106),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(
            indent: 25.0,
            endIndent: 25.0,
            color: Colors.white70,
            height: 40.0,
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Material(
                    color: Colors.white70,
                    elevation: 0.0,
                    type: MaterialType.canvas,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0
                      ),
                      child: ListTile(
                        shape: BeveledRectangleBorder(
                          side: BorderSide(
                            width: 0.5,
                            color: Colors.black45,
                          ),
                        ),
                        dense: false,
                        style: ListTileStyle.list,
                        leading: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {},
                          child: Container(
                            width: 53,
                            height: 45.0,
                            padding: const EdgeInsets.symmetric(
                              vertical: 1.0,
                              horizontal: 0,
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: 0,
                            ),
                            alignment: Alignment.center,
                            child:Row(
                              children: [
                                Divider(
                                  indent: 10,
                                ),
                                Material(
                                  type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                        width: 1.5,
                                        color: Color.fromARGB(200, 24, 179, 106),
                                        ),
                                      color: Color.fromARGB(45, 0, 200, 0),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(10.0),
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(
                                        Icons.speaker_phone_rounded,
                                        size: 20.0,
                                        color: Color.fromARGB(200, 24, 179, 106),
                                        ),
                                      ),
                                    ),
                                    ),
                                  ),
                              ],
                            ),

                          ),
                        ),
                        title:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Refer & Earn',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(220, 74, 4, 88),
                                      ),
                                    ),
                                  Divider(
                                    height: 10.0,
                                    indent: 5.0,
                                    endIndent: 2.0,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Earn N800 Cashback per referral',
                                    style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                  ],
                                ),
                        trailing: Icon(
                        Icons.cancel,
                        color: Colors.black54,
                        size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Material(
                    color: Colors.white70,
                    elevation: 0.0,
                    type: MaterialType.canvas,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0
                      ),
                      child: ListTile(
                        shape: BeveledRectangleBorder(
                          side: BorderSide(
                            width: 0.5,
                            color: Colors.black45,
                          ),
                        ),
                        dense: false,
                        style: ListTileStyle.list,
                        leading: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {},
                          child: Container(
                            width: 53,
                            height: 45.0,
                            padding: const EdgeInsets.symmetric(
                              vertical: 1.0,
                              horizontal: 0,
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: 0,
                            ),
                            alignment: Alignment.center,
                            child:Row(
                              children: [
                                Divider(
                                  indent: 10,
                                ),
                                Material(
                                  type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                        width: 1.5,
                                        color: Color.fromARGB(200, 24, 179, 106),
                                        ),
                                      color: Color.fromARGB(45, 0, 200, 0),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(10.0),
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(
                                        Icons.offline_share_sharp,
                                        size: 20.0,
                                        color: Color.fromARGB(200, 24, 179, 106),
                                        ),
                                      ),
                                    ),
                                    ),
                                  ),
                              ],
                            ),

                          ),
                        ),
                        title:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Zero transfer charges',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(220, 74, 4, 88),
                                      ),
                                    ),
                                  Divider(
                                    height: 10.0,
                                    indent: 5.0,
                                    endIndent: 2.0,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Transfer from all banks are accepted',
                                    style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                  ],
                                ),
                        trailing: Icon(
                        Icons.cancel,
                        color: Colors.black54,
                        size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        ],
      );
  }

  AppBar clonedAppBar() {
    return AppBar(
        backgroundColor: Colors.white70,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage('asset/profile_pic.jpeg'),
            ),

            Divider(
              indent: 3.0,
              endIndent: 3.0,
            ),

            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Divider(
                    height: 40.0,
                    thickness: 10.0,
                  ),
                ),
                Text(
                  'Hello, OBASI',
                  textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: false,
                    applyHeightToLastDescent: true,
                  ),
                  style: TextStyle(
                    textBaseline: TextBaseline.alphabetic,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: -3.0,
                  ),
                ),
                new Tab(
                  icon: Image.asset('asset/tier.png'),
                  height: 45.0,
                ),
                //          ImageIcon(AssetImage('asset/tier.png'),
                //       size: 45,
                //         color: Colors.black,
                //       ),
                //   Image.asset('asset/tier1.jpg'),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Divider(
                    height: 30.0,
                  ),
                ),
              ],
            ),

            Divider(
              thickness: 30.0,
              height: 30.0,
              indent: 50.0,
              endIndent: 38.0,
            ),

            //for the three icons at the right side of the app from user perspective
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.connect_without_contact_sharp,
                  color: Colors.black45,
                  size: 30.0,
                ),
                Divider(
                  thickness: 20.0,
                  height: 20.0,
                  indent: 22.0,
                ),
                Icon(
                  Icons.qr_code_scanner_sharp,
                  color: Colors.black45,
                  size: 30.0,
                ),
                Divider(
                  thickness: 20.0,
                  height: 20.0,
                  indent: 22.0,
                ),
                Icon(
                  Icons.notifications_none_rounded,
                  semanticLabel: "Notifications button",
                  color: Colors.black45,
                  size: 30.0,
                ),
              ],
            ),
          ],
        ),
      );
  }

