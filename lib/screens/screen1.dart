import 'package:flutter/material.dart';
import 'package:willow/models/consultation.dart';
import 'package:willow/widgets/consultation_card.dart';
import 'package:willow/service/api.dart';
import 'package:willow/utils/navigation.dart';
import 'package:willow/components/navbar.dart';
import 'package:willow/components/selector_widget.dart';
import 'package:willow/screens/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Api api = Api();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: Padding(
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
              FutureBuilder(
                builder: (BuildContext context,
                    AsyncSnapshot<List<Consultation>> snapshot) {
                  if (snapshot.hasError) {
                    return Container(
                      child: Center(
                        child: Text('error!'),
                      ),
                    );
                  }
                  if (snapshot.connectionState != ConnectionState.done) {
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return consultationCard(
                          snapshot.data![index].name,
                          snapshot.data![index].imgUrl,
                          snapshot.data![index].date,
                        );
                      },
                    );
                  }
                  return Container();
                },
                future: api.getConsultation(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
