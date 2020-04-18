import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0, // 导航栏阴影
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '设置',
          style: TextStyle(color: Color(0xFF333333), fontSize: 18),
        ),
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
  //开启匿名
  bool _switchAnonymous = false; //维护单选开关状态

  //消息开关
  bool _switchMessage = true; //维护单选开关状态

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                //开启匿名
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFede6f3),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('开启匿名',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 15.0,
                          )),
                      Switch(
                        value: _switchAnonymous, //当前状态
                        activeColor: Color(0xFF9C92FF),
                        onChanged: (value) {
                          //重新构建页面
                          setState(() {
                            _switchAnonymous = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                //消息开关
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFede6f3),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('消息开关',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 15.0,
                          )),
                      Switch(
                        value: _switchMessage, //当前状态
                        activeColor: Color(0xFF9C92FF),
                        onChanged: (value) {
                          //重新构建页面
                          setState(() {
                            _switchMessage = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //注销
            Padding(
              padding: EdgeInsets.only(bottom: 50.0),
              child: FlatButton(
                onPressed: () {
                  print(11);
                },
                padding: EdgeInsets.symmetric(
                  horizontal: 100.0,
                  vertical: 20.0,
                ),
                color: Color(0xFFF46D75),
                child: Text(
                  "注销",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            )
            // Gaps.vGap10,
          ],
        ));
  }
}
