import 'package:flutter/material.dart';
import 'package:willow/utils/navigation.dart';
import 'package:willow/components/navbar.dart';
import 'package:willow/components/selector_widget.dart';
import 'package:willow/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    tile(String imgUrl) {
      return ListTile(
        tileColor: Colors.white70,
        trailing: Container(
          width: 50,
          height: 50,
          child: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage(
              imgUrl,
            ),
          ),
        ),
        title: Text('Eva Reid'),
        subtitle: Text('Online Consultation'),
      );
    }

    card() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('asset/images/Path 2138@1X.png'),
                        Text(
                          'November 17 12:30',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'confirmed',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigate.navigate(context, Screen2());
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Start examination',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0XFF0f5699),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigate.navigate(context, Screen2());
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      child: Center(
                        child: Text(
                          'Reshedule',
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0XFF52b1e4).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        color: Colors.white70,
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'asset/images/filter-results-6566.png',
                    width: 20,
                  ),
                  Text(
                    'Schedule',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.settings),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Selector('Upcoming', 'Accepted'),
              SizedBox(height: 20),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text('This Week'),
              ),
              SizedBox(
                height: 10,
              ),
              tile('asset/images/Ellipse 189@1X.png'),
              card(),
              tile('asset/images/Ellipse 189@1X (1).png'),
              card(),
              tile('asset/images/Ellipse 189@1X.png'),
              card(),
              tile('asset/images/Ellipse 189@1X (1).png'),
              card(),
            ],
          ),
        ),
      ),
    );
  }
}
