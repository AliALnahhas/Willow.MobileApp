import 'package:flutter/material.dart';
import 'package:willow/components/selector_widget.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  late int selected;
  @override
  void initState() {
    selected = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List img = [
      'asset/images/images (1)@1X.png',
      'asset/images/images (2)@1X.png',
      'asset/images/images@1X.png',
      'asset/images/images (1)@1X.png',
      'asset/images/images@1X.png',
    ];
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(
                        'asset/images/pexels-anthony-shkraba-5214995@1X.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Image.asset('asset/images/Calendar@1X (1).png'),
                                SizedBox(
                                  width: 15,
                                ),
                                Image.asset('asset/images/Path 1@1X.png')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 210,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Doctor Eva Reid',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                      'asset/images/Group 29184@1X.png'),
                                ],
                              ),
                              Text(
                                'Dermatology , consmetology and laser specialist',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset('asset/images/Path 15741@1X.png'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset('asset/images/Path 15741@1X.png'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset('asset/images/Path 15741@1X.png'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset('asset/images/Path 15741@1X.png'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Image.asset('asset/images/Path 15741@1X.png'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            width: 100,
                            height: 110,
                            child: Image.asset(
                              'asset/images/pexels-anthony-shkraba-5215024@1X.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text('Profile View'),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 0.5,
                      height: 30,
                      color: Colors.grey,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('Profile View'),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 0.5,
                      height: 30,
                      color: Colors.grey,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('Profile View'),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Selector('Doctor Info', 'Work Info'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        'asset/images/icons8-info-24.png',
                        color: Colors.blue,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF52b1e4).withOpacity(0.2),
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Text('Basic Information'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 25,
                        child: Center(
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF52b1e4).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata ',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        'asset/images/fi-rr-badge@1X.png',
                        color: Colors.blue,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF52b1e4).withOpacity(0.2),
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Text('Certificates'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 25,
                        child: Center(
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF52b1e4).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: img.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 90,
                      height: 60,
                      child: Image.asset(
                        img[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        'asset/images/verified-3600.png',
                        color: Colors.blue,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF52b1e4).withOpacity(0.2),
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Text('Insurance Companies'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 25,
                        child: Center(
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF52b1e4).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Romania Company',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    'Romania Co',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
