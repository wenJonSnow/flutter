import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

//教室
class ClassRoom extends StatefulWidget {
  @override
  _ClassRoomState createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('教室'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF8975FF), Color(0xFFFF69A7)],
                //   begin: Alignment.topLeft,
                //   //end: Alignment.centerLeft
                //   end: Alignment.bottomRight
              ),
            ),
          ),
          leading: Builder(builder: (context) {
            return IconButton(
              icon: Icon(Icons.dashboard, color: Colors.white), //自定义图标
              onPressed: () {
                // 打开抽屉菜单
              },
            );
          }),
          actions: <Widget>[
            //导航栏右侧菜单
            FlatButton(
              color: Color(0x000000),
              highlightColor: Color(0x000000),
              splashColor: Color(0x000000),
              child: Image.asset(
                Utils.getImgPath('search@3x'), // 搜索图片
              ),
              onPressed: () {},
            ),
          ],
          elevation: 0,
        ),
        body: Content());
  }
}

// class _ClassRoomState extends State<ClassRoom> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: <Widget>[
//         //顶部背景径向渐变内容
//         Container(
//           // margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
//           constraints: BoxConstraints.tightFor(
//               width: double.infinity, height: 240.0), //卡片大小
//           decoration: BoxDecoration(
//             //背景装饰
//             gradient: LinearGradient(
//                 //背景径向渐变
//                 colors: [Color(0xFF8975FF), Color(0xFFFF69A7)],
//                 begin: Alignment.topLeft,
//                 //end: Alignment.centerLeft
//                 end: Alignment.bottomRight //效果同上
//                 ),
//           ),
//         ),
//         // 左边按钮图标
//         Positioned(
//           top: 40.0,
//           left: 20,
//           child: IconButton(
//             icon: Icon(Icons.add, color: Colors.white),
//             onPressed: () {},
//           ),
//         ),
//         //右边搜索按钮
//         Positioned(
//             top: 40.0,
//             right: 20,
//             child: FlatButton(
//               color: Color(0x000000),
//               highlightColor: Color(0x000000),
//               splashColor: Color(0x000000),
//               child: Image.asset(
//                 Utils.getImgPath('search@3x'), // 搜索图片
//               ),
//               onPressed: () {},
//             )),
//         //学生背景图片
//         Positioned(
//           bottom: 1.0,
//           child: Image.asset(
//             Utils.getImgPath('bgLog@3x'), // 登录页背景图片
//             width: 300,
//             height: 200,
//             // fit: BoxFit.fill
//           ),
//         ),
//         // Content()
//       ],
//     );
//   }
// }

// 内容主题
class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  List _tapeData = [
    {},
    {
      'name': '不服输的猫',
      'pic': '',
      'partake': '53',
      'time': '2020.02.14 12:00',
      'msg':
          '我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': ''
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
      'picurl': 'xueshen2'
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
        // itemExtent: 176.0, //强制高度为
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
//           // margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
              constraints: BoxConstraints.tightFor(
                width: double.infinity,
                height: 200.0,
              ), //卡片大小
              decoration: BoxDecoration(
                //背景装饰
                gradient: LinearGradient(
                  //背景径向渐变
                  colors: [Color(0xFF8975FF), Color(0xFFFF69A7)],
                  // begin: Alignment.topLeft,
                  // //end: Alignment.centerLeft
                  // end: Alignment.bottomRight //效果同上
                ),
              ),
              child: Image.asset(
                Utils.getImgPath('xueshen2'), // 登录页背景图片
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            );
          } else {
            return this.__buildListItem(index);
          }
        });
  }
}

// 每一项渲染
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
      height: itemData['picurl'] == '' ? 160 : 300,
      //   margin: EdgeInsets.only(top: 10.0), //容器外填充
      // padding: EdgeInsets.all(10.0),
      //   color: Colors.white,
      //   decoration:BoxDecoration(
      //   ),
      decoration: BoxDecoration(
        //背景装饰
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFede6f3),
            width: 1.0,
          ),
        ),
        // boxShadow: [
        //   //卡片阴影
        //   BoxShadow(
        //       color: Color(0xFF9C92FF),
        //       offset: Offset(20.0, 4.0),
        //       blurRadius: 8.0
        //       // spreadRadius:4.0
        //       )
        // ],
      ),
      child: Stack(
        // alignment: Alignment.centerLeft, //指定未定位或部分定位widget的对齐方式
        children: <Widget>[
          Positioned(
            left: 28.0,
            top: 16.0,
            child: ClipOval(
              child: Image.asset(
                Utils.getImgPath('touxiang'),
                width: 40.0, // 搜索图片
              ),
            ),
          ),
          Positioned(
              left: 78.0,
              top: 10.0,
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
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFF9C92FF),
                        borderRadius: BorderRadius.circular(30.0), //3像素圆角
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2.0),
                        child: Text(
                          itemData['partake'] + '人参与',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ],
              )),
          Positioned(
            right: 18.0,
            top: 10.0,
            child: Text(
              itemData['time'],
              style: TextStyle(color: Color(0xFF999999), fontSize: 10.0),
            ),
          ),
          Positioned(
            top: 36.0,
            left: 78.0,
            child: Image.asset(
              Utils.getImgPath('dizhi@3x'),
              width: 12.0, // 搜索图片
            ),
          ),
          Positioned(
            top: 34.0,
            left: 94.0,
            child: Text(
              itemData['location'],
              style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 66, 18.0, 10),
            child: Text(
              itemData['msg'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Color(0xFF333333), fontSize: 16.0),
            ),
          ),

          //  内容图片
          Padding(
            padding: EdgeInsets.only(left: 80, top: 120),
            child: itemData['picurl'] == ''
                ? null
                : Image.asset(
                    Utils.getImgPath(itemData['picurl']), // 登录页背景图片
                    width: 260,
                    // fit: BoxFit.fill,
                  ),
          ),
          Positioned(
            bottom: 2.0,
            right: 150.0,
            child: FlatButton.icon(
              icon: Icon(
                Icons.pan_tool,
                color: Color(0xFF999999),
                size: 12,
              ),
              label: Text(
                "捡取",
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12.0,
                ),
              ),
              onPressed: () => print('2'),
            ),
          ),
          Positioned(
              bottom: 16.0,
              right: 120.0,
              child: Icon(
                Icons.person_pin_circle,
                color: Color(0xFF999999),
                size: 20,
              )),
          Positioned(
            bottom: 18.0,
            right: 18.0,
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: "已捡对象数: ",
                style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
              ),
              TextSpan(
                text: itemData['num'],
                style: TextStyle(color: Colors.black, fontSize: 12.0),
                //    recognizer: _tapRecognizer
              ),
              TextSpan(
                text: "/" + itemData['total'],
                style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
              ),
            ])),
          ),
        ],
      ),
    );
  }
}
