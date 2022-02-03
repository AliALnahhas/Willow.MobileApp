import 'package:flutter/material.dart';
import 'package:willow/screens/screen2.dart';
import 'package:willow/utils/navigation.dart';

class consultationCard extends StatelessWidget {
  String name, imgUrl, date;
  consultationCard(this.name, this.imgUrl, this.date);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
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
          title: Text(name),
          subtitle: Text('Online Consultation'),
        ),
        Container(
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
                          Image.asset(
                              'asset/images/Path 2138@1X.png'), //Image.Network()
                          Text(
                            date,
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
        ),
      ],
    );
  }
}
