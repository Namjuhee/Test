import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
            padding: EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



