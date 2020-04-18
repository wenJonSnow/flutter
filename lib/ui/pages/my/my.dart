import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

import 'package:male_flutter_app/ui/pages/my/PaperItem.dart';
import 'package:male_flutter_app/ui/pages/my/HaoYouItem.dart';
import 'package:male_flutter_app/ui/pages/my/TouKanItem.dart';

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
        brightness: Brightness.light,
        elevation: 0, // 导航栏阴影
        centerTitle: true,
        title: Text(
          '我的',
          style: TextStyle(color: Color(0xFF333333), fontSize: 18),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, //如果leading为null，是否自动实现默认的leading按钮
        actions: <Widget>[
          //导航栏右侧菜单
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              color: Color(0x000000),
              highlightColor: Color(0x000000),
              splashColor: Color(0x000000),
              icon: Image.asset(
                Utils.getImgPath('setting@3x'),
                width: 20.0,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'settingpage');
              },
            ),
          )
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
    'name': '李帅妞22222',
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
    return PaperItem(itemData: item);
  }

// 好友列表数据
  List _haoYouData = [
    {
      'name': '我的小猫',
      'sex': 0,
      'school': '中南民族大学' //0 女  ，1 男
    },
    {
      'name': '我的小猫111',
      'sex': 1,
      'school': '中南民族大学' //0 女  ，1 男
    },
    {
      'name': '我的小猫',
      'sex': 0,
      'school': '中南民2族大学' //0 女  ，1 男
    },
    {
      'name': '我的小猫',
      'sex': 0,
      'school': '中南民族大学' //0 女  ，1 男
    },
    {
      'name': '我的小猫',
      'sex': 0,
      'school': '中南民族大学' //0 女  ，1 男
    },
  ];

  // 渲染好友数据
  Widget _buildHaoYouItem(index) {
    Map item = _haoYouData[index];
    return HaoYouItem(itemData: item);
  }

// 偷看数据
  List _touKanData = [
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

// 渲染偷看列表
  Widget _buildToukanItem(index) {
    Map item = _touKanData[index];

    return TouKanItem(itemData: item);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: <Widget>[
            //  头部用户基本信息
            SliverFixedExtentList(
              itemExtent: 280.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  //创建列表项
                  return Container(
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
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Image.asset(
                                              Utils.getImgPath(
                                                  userData['sex'] == 0
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
                                          horizontal: 12.0,
                                          vertical: 2.0,
                                        ),
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
                                // color: Colors.red,
                                highlightColor: Color(0x000000),
                                colorBrightness: Brightness.dark,
                                splashColor: Color(0x000000),
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
                                  Navigator.pushNamed(context, 'invitepage');
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
            active == 'zhitiao'
                ? SliverFixedExtentList(
                    itemExtent: 80.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        //创建列表项
                        return Container(
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
                  )
                : SliverPadding(padding: EdgeInsets.all(0.0)),

            // 纸条列表
            active == 'zhitiao'
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        //创建列表项
                        return _buildListItem(index);
                      },
                      childCount: _tapeData.length, //50个列表项
                    ),
                  )
                : SliverPadding(padding: EdgeInsets.all(0.0)),

            // 好友
            active == 'haoyou'
                ? SliverGrid(
                    //Grid
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //Grid按两列显示
                      //   mainAxisSpacing: 46.0, //上下间隔
                      //   crossAxisSpacing: 60.0, // 左右间隔
                      childAspectRatio: 1.28, // 缩放比列
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        //创建子widget
                        //创建列表项
                        return _buildHaoYouItem(index);
                      },
                      childCount: _haoYouData.length,
                    ),
                  )
                : SliverPadding(padding: EdgeInsets.all(0.0)),

            // 偷看数量
            active == 'toukan'
                ? SliverFixedExtentList(
                    itemExtent: 80.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        //创建列表项
                        return Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                '已偷看过897张纸条',
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
                  )
                : SliverPadding(padding: EdgeInsets.all(0.0)),

            // 偷看列表
            active == 'toukan'
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        //创建列表项
                        return _buildToukanItem(index);
                      },
                      childCount: _touKanData.length, //50个列表项
                    ),
                  )
                : SliverPadding(padding: EdgeInsets.all(0.0)),
          ],
        ));
  }
}
