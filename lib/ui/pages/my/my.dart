import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

//我的
class MyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyScreenState();
}

class MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 导航栏阴影
        title: Text(
          '我的',
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
            child: Image.asset(
              Utils.getImgPath('setting@3x'),
              width: 20.0,
            ),
            onPressed: () {
              print(1);
            },
          ),
        ],
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  Map userData = {
    'name': '李帅妞',
    'school': '中南民族大学',
    'sex': 0, //0： 女 1：男
    'age': '24',
    'Authentication': true,
  };

  // 当前tap
  String active = 'zhitiao';

  //tap切换
  void _activeState({activeTap}) {
    setState(() {
      active = activeTap;
    });
  }

// 纸条列表数据
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

  // 渲染纸条列表
  Widget _buildListItem(index) {
    Map item = _tapeData[index];
    return Item(itemData: item);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        //  头部用户基本信息
        SliverFixedExtentList(
          itemExtent: 280.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              //创建列表项
              return Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // 信息上部分
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          // 左边图片
                          Image.asset(
                            Utils.getImgPath('my_paper@3x'),
                            height: 200.0,
                          ),

                          // 中间信息
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    userData['name'],
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Gaps.vGap20,
                                  Text(
                                    userData['school'],
                                    style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Gaps.vGap20,
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Image.asset(
                                          Utils.getImgPath(userData['sex'] == 0
                                              ? 'female_icon@3x'
                                              : 'male_icon@3x'),
                                          width: 16.0,
                                        ),
                                      ),
                                      Text(
                                        userData['age'],
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gaps.vGap20,
                                  Gaps.vGap20,
                                ],
                              ),

                              // 认证
                              DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF2F2F2),
                                    borderRadius:
                                        BorderRadius.circular(4.0), //3像素圆角
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 2.0),
                                    child: Text(
                                      userData['Authentication'] == true
                                          ? '已认证'
                                          : '未认证',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color(0xFF999999),
                                      ),
                                    ),
                                  )),
                            ],
                          ),

                          // 右边头像
                          Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.asset(
                                Utils.getImgPath('wode_toux'),
                                height: 180.0,
                                width: 140.0,
                                // fit: BoxFit.fill,
                              ),
                            ),
                          )
                        ],
                      ),

                      //好友等按钮列表
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //纸条
                          FlatButton(
                            color: Color(0x000000),
                            highlightColor: Color(0x000000),
                            colorBrightness: Brightness.dark,
                            splashColor: Color(0x000000),
                            shape: CircleBorder(),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  Utils.getImgPath('bianqianzhi-@3x'),
                                  width: 20.0,
                                ),
                                Gaps.vGap5,
                                Text(
                                  "纸条",
                                  style: TextStyle(
                                    color: active == 'zhitiao'
                                        ? Color(0xFFFF5A8E)
                                        : Colors.black,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              _activeState(activeTap: 'zhitiao');
                            },
                          ),

                          //好友
                          FlatButton(
                            color: Color(0x000000),
                            highlightColor: Color(0x000000),
                            colorBrightness: Brightness.dark,
                            splashColor: Color(0x000000),
                            shape: CircleBorder(),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  Utils.getImgPath('tianchongxing-@3x'),
                                  width: 20.0,
                                ),
                                Gaps.vGap5,
                                Text(
                                  "好友",
                                  style: TextStyle(
                                    color: active == 'haoyou'
                                        ? Color(0xFFFF5A8E)
                                        : Colors.black,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              _activeState(activeTap: 'haoyou');
                            },
                          ),

                          //偷看
                          FlatButton(
                            color: Color(0x000000),
                            highlightColor: Color(0x000000),
                            colorBrightness: Brightness.dark,
                            splashColor: Color(0x000000),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  Utils.getImgPath('xiaoxi@3x'),
                                  width: 20.0,
                                ),
                                Gaps.vGap5,
                                Text(
                                  "偷看",
                                  style: TextStyle(
                                    color: active == 'toukan'
                                        ? Color(0xFFFF5A8E)
                                        : Colors.black,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              _activeState(activeTap: 'toukan');
                            },
                          ),

                          //邀请
                          FlatButton(
                            color: Color(0x000000),
                            highlightColor: Color(0x000000),
                            colorBrightness: Brightness.dark,
                            splashColor: Color(0x000000),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  Utils.getImgPath('fenxiang@3x'),
                                  width: 20.0,
                                ),
                                Gaps.vGap5,
                                Text(
                                  "邀请",
                                  style: TextStyle(
                                    color: active == 'yaoqing'
                                        ? Color(0xFFFF5A8E)
                                        : Colors.black,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              _activeState(activeTap: 'yaoqing');
                            },
                          ),
                        ],
                      ),
                    ]),
              );
            },
            childCount: 1, //50个列表项
          ),
        ),

        // 纸条数量
        SliverFixedExtentList(
          itemExtent: 80.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              //创建列表项
              return Container(
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      '已丢897张纸条',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              );
            },
            childCount: 1, //50个列表项
          ),
        ),

        // 纸条列表
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              //创建列表项
              return _buildListItem(index);
            },
            childCount: _tapeData.length, //50个列表项
          ),
        ),

        // 好友
        SliverGrid(
          //Grid
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //Grid按两列显示
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              //创建子widget
              return Container(
                alignment: Alignment.center,
                color: Colors.cyan[100 * (index % 9)],
                child: Text('grid item '),
              );
            },
            childCount: 4,
          ),
        ),
      ],
    );
  }
}

// 纸条每一项渲染
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
            right: 10.0,
            // top: 10.0,
            child: FlatButton(
              color: Color(0x000000),
              highlightColor: Color(0x000000),
              colorBrightness: Brightness.dark,
              splashColor: Color(0x000000),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Utils.getImgPath('shishui@3x')),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                  child: InkWell(
                    child: Text(
                      '撕碎',
                      style: TextStyle(color: Color(0xFF999999), fontSize: 10),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, "navi");
              },
            ),
          ),

          Positioned(
            top: 34.0,
            left: 80.0,
            child: Text(
              itemData['time'],
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
