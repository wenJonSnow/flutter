import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

import 'package:male_flutter_app/ui/pages/othersPage/PaperItem.dart';
import 'package:male_flutter_app/ui/pages/othersPage/TouKanItem.dart';

//我的
class OthersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OthersPageState();
}

class OthersPageState extends State<OthersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 导航栏阴影
        title: Text(
          '无心人主页',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
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
              });
        }),
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
                                  Text(
                                    userData['name'],
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Gaps.vGap100,
                                  Row(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Image.asset(
                                          Utils.getImgPath('faxiaoxi@3x'),
                                          width: 30.0,
                                        ),
                                        onPressed: () {
                                          print(11);
                                        },
                                      ),
                                      IconButton(
                                        icon: Image.asset(
                                          Utils.getImgPath('add_icon@3x'),
                                          width: 30.0,
                                        ),
                                        onPressed: () {
                                          print(11);
                                        },
                                      ),
                                    ],
                                  )
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                'Ta偷看过897张纸条',
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
