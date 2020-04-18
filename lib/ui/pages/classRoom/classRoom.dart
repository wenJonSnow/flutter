import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';
import 'package:male_flutter_app/data/repository/user_repository.dart';

//教室
class ClassRoom extends StatefulWidget {
  @override
  _ClassRoomState createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
  void _ss() {
    String username = '';
    String password = '';
    UserRepository.login(username, password).then((onValue) {
      print(onValue);
      print(111);
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        // title: Text('教室'),
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
        // backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.dashboard, color: Colors.white), //自定义图标
            onPressed: () {
              // 打开抽屉菜单
              Navigator.pushNamed(context, '/');
              // _ss();
            },
          );
        }),
        actions: <Widget>[
          //导航栏右侧菜单
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              // color: Color(0x000000),
              // highlightColor: Color(0x000000),
              // splashColor: Color(0x000000),
              icon: Icon(Icons.search),

              // icon: Image.asset(
              //   Utils.getImgPath('search@3x'), // 搜索图片
              // ),
              onPressed: () {},
            ),
          )
        ],
        elevation: 0,
      ),
      body: Content(),
    );
  }
}

// 内容主题
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
      'time': '12:00',
      'msg':
          '我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': '',
      'ispickup': false
    },
    {
      'name': '妞',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'meinv',
      'ispickup': false
    },
    {
      'name': '00后老阿姨',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': '',
      'ispickup': true
    },
    {
      'name': '00后老阿姨',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': '',
      'ispickup': false
    },
    {
      'name': '00后老阿姨',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'meinv',
      'ispickup': true
    },
    {
      'name': '00后老阿姨',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': '',
      'ispickup': true
    },
    {
      'name': '00后老阿姨',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'ispickup': true
    },
  ];

  Widget _buildListItem(index) {
    Map item = _tapeData[index];
    return Item(itemData: item);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: <Widget>[
            //  顶部图片
            SliverFixedExtentList(
              itemExtent: 200.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  //创建列表项
                  return Container(
                    child: Image.asset(
                      Utils.getImgPath('xueshen2'), // 登录页背景图片
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  );
                },
                childCount: 1, //50个列表项
              ),
            ),

            // 列表
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  //创建列表项
                  return _buildListItem(index);
                },
                childCount: _tapeData.length, //50个列表项
              ),
            )
          ],
        ));
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
  // 去别人主页
  void _goOthersPage() {
    Navigator.pushNamed(context, 'otherspage');
  }

  @override
  Widget build(BuildContext context) {
    Map itemData = widget.itemData;

    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      height: itemData['picurl'] == '' ? 160 : 300,
      decoration: BoxDecoration(
        //背景装饰
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFede6f3),
            width: 2.0,
          ),
        ),
      ),
      child: Stack(
        // alignment: Alignment.centerLeft, //指定未定位或部分定位widget的对齐方式
        children: <Widget>[
          Positioned(
            // left: .0,
            top: 18.0,
            // child: IconButton(
            //     icon: ClipOval(
            //       child: Image.asset(
            //         Utils.getImgPath('touxiang'),
            //         width: 40.0, // 搜索图片
            //          height: 40.0,
            //          fit:BoxFit.fill
            //       ),
            //     ),
            //     onPressed: () {
            //       _goOthersPage();
            //     }),

            child: GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.asset(
                    Utils.getImgPath('meinv'),
                    width: 36.0, // 搜索图片
                    height: 36.0,
                    fit: BoxFit.fill,
                  ),
                ),
                onLongPress: () {},
                onDoubleTap: () {},
                onTap: () {
                  _goOthersPage();
                }),
          ),
          Positioned(
              left: 50.0,
              top: 14.0,
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onLongPress: () {},
                        onDoubleTap: () {},
                        onTap: () {
                          _goOthersPage();
                        },
                        child: Text(
                          itemData['name'],
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )),
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
            right: 8.0,
            top: 16.0,
            child: Text(
              itemData['time'],
              style: TextStyle(color: Color(0xFF999999), fontSize: 10.0),
            ),
          ),
          Positioned(
            top: 38.0,
            left: 50.0,
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  Utils.getImgPath('dizhi@3x'),
                  width: 12.0, // 搜索图片
                ),
                Gaps.hGap5,
                Text(
                  itemData['location'],
                  style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
                ),
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.fromLTRB(34, 66, 18.0, 10),
              child: FlatButton(
                // color: Colors.red,
                onPressed: () {
                  Navigator.pushNamed(context, 'paperpage');
                },
                onLongPress: () {},
                child: Text(
                  itemData['msg'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Color(0xFF333333), fontSize: 16.0),
                ),
              )),

          //  内容图片
          Padding(
              padding: EdgeInsets.only(left: 34, top: 120),
              child: FlatButton(
                // color: Colors.red,
                onPressed: () {
                  itemData['picurl'] != ''
                      ? Navigator.pushNamed(context, 'paperpage')
                      : print('');
                },
                child: itemData['picurl'] == ''
                    ? null
                    : Image.asset(
                        Utils.getImgPath(itemData['picurl']), // 登录页背景图片
                        width: 260,
                        // fit: BoxFit.fill,
                      ),
              )),

          itemData['ispickup']
              ? Positioned(
                  bottom: 2.0,
                  right: 140.0,
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
                )
              : Text(''),
          Positioned(
              bottom: 16.0,
              right: 110.0,
              child: Icon(
                Icons.person_pin_circle,
                color: Color(0xFF999999),
                size: 20,
              )),
          Positioned(
            bottom: 18.0,
            right: 8.0,
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
