import 'package:flutter/material.dart';
import 'package:willow/utils/navigation.dart';
import 'package:willow/screens/screen2.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigate.navigate(context, Screen2());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('asset/images/Home@1X.png'),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('asset/images/Calendar@1X.png'),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Schedule',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigate.navigate(context, Screen2());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/images/messenger.png',
                    width: 20,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'messages',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigate.navigate(context, Screen2());
                },
                child: Image.asset('asset/images/Group 28056@1X.png')),
          ],
        ),
        height: 74,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
