import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

import 'package:male_flutter_app/ui/pages/PaperPage/CommentItem.dart';

//我的
class PaperPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PaperPageState();
}

class PaperPageState extends State<PaperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 导航栏阴影
        centerTitle: false,
        brightness: Brightness.light,
        title: Text(
          '00后老阿姨的纸条',
          style: TextStyle(color: Color(0xFF333333), fontSize: 18),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, //如果leading为null，是否自动实现默认的leading按钮
        leading: Builder(
          builder: (context) {
            return IconButton(
                // color: Color(0x000000),
                // highlightColor: Color(0x000000),
                // splashColor: Color(0x000000),
                icon: Image.asset(
                  Utils.getImgPath('back@3x'),
                  width: 11.0,
                  height: 19.0,
                ),
                onPressed: () {
                  // 返回
                  Navigator.pop(context);
                });
          },
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              // color: Color(0x000000),
              // highlightColor: Color(0x000000),
              // splashColor: Color(0x000000),
              icon: Icon(Icons.more_horiz, color: Colors.black),
              onPressed: () {
                print('2');
                // Navigator.pushNamed(context, 'settingpage');
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
    'name': '00后老阿姨',
    'pic': '',
    'partake': '53',
    'time': '2020.02.14 12:00',
    'msg': '我对你的思念已经无法自拔！',
    'location': '山东大学',
    'num': '15',
    'total': '20',
    'picurl': 'meinv'
    // 'picurl': ''
  };

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
      'picurl': 'xueshen2'
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
    return CommentItem(itemData: item);
  }

//

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: <Widget>[
            //  头部用户基本信息
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Positioned(
                        left: 10.0,
                        top: 16.0,
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            // color: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0)),
                            child: ClipOval(
                              child: Image.asset(
                                Utils.getImgPath('meinv'),
                                fit: BoxFit.fill,
                                width: 56.0,
                                height: 56.0,
                                // 搜索图片
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'otherspage');
                            }),
                      ),
                      Positioned(
                        left: 88.0,
                        top: 16.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'otherspage');
                          },
                          child: Text(
                            userData['name'],
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20.0,
                        top: 10.0,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xFF9C92FF),
                              borderRadius: BorderRadius.circular(30.0), //3像素圆角
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 4.0),
                              child: Text(
                                userData['partake'] + '人参与',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                      Positioned(
                        top: 40.0,
                        left: 88.0,
                        child: Text(
                          userData['time'],
                          style: TextStyle(
                              color: Color(0xFF999999), fontSize: 10.0),
                        ),
                      ),
                      Positioned(
                        top: 58.0,
                        left: 88.0,
                        child: Image.asset(
                          Utils.getImgPath('dizhi@3x'),
                          width: 12.0, // 搜索图片
                        ),
                      ),
                      Positioned(
                        top: 58.0,
                        left: 104.0,
                        child: Text(
                          userData['location'],
                          style: TextStyle(
                              color: Color(0xFF999999), fontSize: 10.0),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 90.0,
                                bottom: 10.0,
                                left: 30.0,
                                right: 30.0),
                            child: Text(
                              '        ' + userData['msg'],
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          //  内容图片

                          userData['picurl'] == ''
                              ? Text('')
                              : Image.asset(
                                  Utils.getImgPath(
                                      userData['picurl']), // 登录页背景图片
                                  width: 260,
                                  // fit: BoxFit.fill,
                                ),
                          Gaps.vGap50
                        ],
                      ),
                    
                      Positioned(
                          bottom: 0.0,
                          right: 120.0,
                          child: Icon(
                            Icons.person_pin_circle,
                            color: Color(0xFF999999),
                            size: 20,
                          )),
                      Positioned(
                        bottom: 2.0,
                        right: 18.0,
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "已捡对象数: ",
                            style: TextStyle(
                                color: Color(0xFF999999), fontSize: 12.0),
                          ),
                          TextSpan(
                            text: userData['num'],
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.0),
                            //    recognizer: _tapRecognizer
                          ),
                          TextSpan(
                            text: "/" + userData['total'],
                            style: TextStyle(
                                color: Color(0xFF999999), fontSize: 12.0),
                          ),
                        ])),
                      ),
                    ],
                  );
                },
                childCount: 1, //50个列表项
              ),
            ),

            // 纸条数量
            SliverFixedExtentList(
              itemExtent: 100.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  //创建列表项
                  return Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(

                        // gradient: LinearGradient(
                        //   colors: [Color(0xFF6339FD), Color(0x000000)],
                        //   begin: Alignment.topCenter,
                        //   end: Alignment.bottomCenter,
                        // ),
                        // borderRadius: BorderRadius.circular(30.0),
                        // border: Border(
                        //   top: BorderSide(
                        //     color: Color(0xFFede6f3),
                        //     width: 1.0,
                        //   ),
                        // )
                        //背景装饰
                        // borderRadius:BorderRadius.circular(30.0),
                        ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '共387条评论',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FlatButton.icon(
                            icon: Icon(
                              Icons.edit,
                              size: 15.0,
                              color: Color(0xFF6339FD),
                            ),
                            label: Text("评论", style: TextStyle(fontSize: 15.0)),
                            onPressed: () {
                              print('2');
                            },
                          ),
                        ],
                      ),
                    ),
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
            )
          ],
        ));
  }
}
