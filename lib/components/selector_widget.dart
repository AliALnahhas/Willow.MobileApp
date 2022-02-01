import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Selector extends StatefulWidget {
  String title1, title2;
  Selector(this.title1, this.title2);

  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  late int selected;
  @override
  void initState() {
    selected = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0XFFe2e3ed).withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = 0;
                });
              },
              child: Container(
                height: 45,
                width: 170,
                child: Center(
                  child: Text(
                    widget.title1,
                    style: TextStyle(
                      color: selected == 1 ? Colors.grey : Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: selected == 0 ? Colors.white : null,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = 1;
                });
              },
              child: Container(
                height: 45,
                width: 170,
                child: Center(
                  child: Text(
                    widget.title2,
                    style: TextStyle(
                      color: selected == 0 ? Colors.grey : Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: selected == 1 ? Colors.white : null,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
