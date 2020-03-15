import 'package:flutter/material.dart';

//校园讯
class CampusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CampusScreenState();
}

class CampusScreenState extends State<CampusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campus'),
      ),
    );
  }
}
