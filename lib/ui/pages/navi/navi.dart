import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';
import 'package:male_flutter_app/ui/pages/classRoom/classRoom.dart';
import 'package:male_flutter_app/ui/pages/message/message.dart';
import 'package:male_flutter_app/ui/pages/my/my.dart';
import 'package:male_flutter_app/ui/pages/campus/campus.dart';

//底部导航
class Navi extends StatefulWidget {
  @override
  _NaviState createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigator.pushNamed(context, "/");
  }

  List<Widget> pages = List<Widget>();

  @override
  void initState() {
    pages
      ..add(ClassRoom())
      //   ..add(CampusScreen())
      ..add(MessageScreen())
      ..add(MyScreen());
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('教室'),
          ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.send),
          //     title: Text('校园讯'),
          //   ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('消息'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('我的'),
          ),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colours.app_nv,
        onTap: _onItemTapped,

        // 这样才会显示 3个以上item
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
