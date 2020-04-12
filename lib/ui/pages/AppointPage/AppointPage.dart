import 'package:flutter/material.dart';

import 'package:male_flutter_app/common/component_index.dart';
import 'package:male_flutter_app/ui/CustomComponents/RoundCheckBox.dart';

// 消息
class AppointPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppointPageState();
}

class AppointPageState extends State<AppointPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '指定对象',
          style: TextStyle(color: Color(0xFF333333), fontSize: 18),
        ),
        elevation: 0, // 导航栏阴影
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
                color: Color(0x000000),
                highlightColor: Color(0x000000),
                splashColor: Color(0x000000),
                icon: Image.asset(
                  Utils.getImgPath('back@3x'),
                  width: 11.0,
                  height: 19.0,
                ),
                onPressed: () {
                  // 返回
                  Navigator.pop(context);
                  selectedData.clear();
                });
          },
        ),

        //导航栏右侧菜单
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: Color(0xFF9C92FF),
              // highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("完成"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0)),
              onPressed: () {
                print('222');
              },
            ),
          ),
        ],
      ),
      body: Content(),
    );
  }
}

// 消息内容主题
class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

List _tapeData = [
  {},
  {
    'name': '不服输的猫22222',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg':
        '我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': '',
    'release': true,
    'id': '1212'
  },
  {
    'name': '李帅妞',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': 'meinv',
    'id': '1212333'
  },
  {
    'name': '00后老阿姨',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': '',
    'id': '121xxx2'
  },
  {
    'name': '00后老阿姨',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': '',
    'id': '1www12'
  },
  {
    'name': '00后老阿姨',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': 'meinv',
    'release': true,
    'id': '1212rrr'
  },
  {
    'name': '00后老阿姨',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': '',
    'id': '12vvvvv12'
  },
  {
    'name': '00后老阿姨',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': 'xueshen2',
    'release': true,
    'id': '12ssss12'
  },
  {
    'name': '互撸娃大金刚',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': 'xueshen2',
    'release': true,
    'id': '122222xddx212'
  },
  {
    'name': '互撸娃大金刚',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': 'xueshen2',
    'release': true,
    'id': '12hhkkr12'
  },
];

class _ContentState extends State<Content> {
  FocusNode focusNode = new FocusNode();
  bool isSearch = false;

  String inputValue = '';

  void _setIsSearch(bool value) {
    setState(() {
      isSearch = value;
    });
  }

  //每条渲染方法
  Widget _buildListItem(index) {
    Map item = _tapeData[index];
    return Item(itemData: item, index: index);
  }

  @override
  Widget build(BuildContext context) {
    focusNode.addListener(() {
      if (focusNode.hasFocus || inputValue.isNotEmpty) {
        _setIsSearch(true);
      } else {
        _setIsSearch(false);
      }
    });
    return Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: _tapeData.length,
            itemExtent: 60.0, //强制高度为50.0
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 10.0,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        TextField(
                          textInputAction: TextInputAction.done,

                          onTap: () {
                            _setIsSearch(true);
                          },
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              inputValue = value.trim();
                            });
                          },
                          focusNode: focusNode,
                          // textInputAction: TextInputAction.search,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Color(0xFFF7F7F7),
                          ),
                        ),
                        !isSearch
                            ? IconButton(
                                icon: Icon(
                                  Icons.search,
                                  color: Color(0xFF999999),
                                ),
                                onPressed: () {
                                  focusNode.requestFocus();
                                  _setIsSearch(true);
                                })
                            : Text(''),
                      ],
                    ));
              } else {
                return _buildListItem(index);
              }
            }));
  }
}

class Item extends StatefulWidget {
  Item({Key key, this.itemData, this.index}) : super(key: key);

  final int index;
  final Map itemData;

  @override
  _ItemState createState() => _ItemState();
}

List selectedData = [];

class _ItemState extends State<Item> {
  bool _checkboxSelected = false; //维护复选框状态
  @override
  Widget build(BuildContext context) {
    Map itemData = widget.itemData;
    int index = widget.index;
    return Container(
      decoration: BoxDecoration(
        //背景装饰
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFede6f3),
            width: 1.0,
          ),
        ),
      ),
      child: Stack(
        // alignment: Alignment.centerLeft, //指定未定位或部分定位widget的对齐方式
        children: <Widget>[
          Positioned(
            left: 20.0,
            top: 10.0,
            child: RoundCheckBox(
              value: _checkboxSelected,
              // activeColor:
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });

                if (_checkboxSelected) {
                  selectedData.add(itemData['id']);
                  print(selectedData);
                } else {
                  selectedData.remove(itemData['id']);
                  print(selectedData);
                }
              },
            ),
          ),
          Positioned(
            left: 80.0,
            top: 16.0,
            child: ClipOval(
              child: Image.asset(
                Utils.getImgPath('touxiang'),
                width: 32.0, // 搜索图片
              ),
            ),
          ),
          Positioned(
              left: 120.0,
              top: 20.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      itemData['name'],
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
