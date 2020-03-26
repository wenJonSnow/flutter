import 'package:flutter/material.dart';

import 'package:male_flutter_app/common/component_index.dart';

// 消息
class MessageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MessageScreenState();
}

class MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 导航栏阴影
        title: Text(
          '消息',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, //如果leading为null，是否自动实现默认的leading按钮
        actions: <Widget>[
          //导航栏右侧菜单
          FlatButton(
            color: Color(0x000000),
            highlightColor: Color(0x000000),
            splashColor: Color(0x000000),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.black), //自定义图标
              onPressed: () {},
            ),
            onPressed: () {},
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

class _ContentState extends State<Content> {
  List _tapeData = [
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
      'release': true
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
      'picurl': 'meinv'
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
      'picurl': ''
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
      'picurl': ''
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
      'release': true
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
      'picurl': ''
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
      'release': true
    },
  ];

  Widget __buildListItem(index) {
    Map item = _tapeData[index];
    return Item(itemData: item);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _tapeData.length,
        itemExtent: 80.0, //强制高度为50.0
        itemBuilder: (BuildContext context, int index) {
          return __buildListItem(index);
        });
  }
}

class Item extends StatefulWidget {
  Item({Key key, this.itemData}) : super(key: key);

  final Map itemData;

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    Map itemData = widget.itemData;

    return Container(
      decoration: BoxDecoration(
        //背景装饰
        color: Colors.white,
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
            top: 16.0,
            child: ClipOval(
              child: Image.asset(
                Utils.getImgPath('touxiang'),
                width: 48.0, // 搜索图片
              ),
            ),
          ),
          Positioned(
            left: 55.0,
            top: 13.0,
            child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xFFFF5A8E),
                  borderRadius: BorderRadius.circular(10.0), //3像素圆角
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
                  child: Text(
                    itemData['partake'],
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                )),
          ),
          Positioned(
              left: 78.0,
              top: 16.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      itemData['name'],
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )),
          Positioned(
            right: 18.0,
            top: 10.0,
            child: itemData['release'] == true
                ? DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFF9C92FF),
                      borderRadius: BorderRadius.circular(30.0), //3像素圆角
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                      child: Text(
                        '即将解除好友关系',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ))
                : Text(''),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80.0, 40.0, 38.0, 10.0),
            child: Text(
              itemData['msg'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Color(0xFF999999), fontSize: 14.0),
            ),
          ),
          Positioned(
            bottom: 2.0,
            right: 18.0,
            child: Text(
              itemData['time'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}
