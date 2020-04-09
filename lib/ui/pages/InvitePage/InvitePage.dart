import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

class InvitePage extends StatefulWidget {
  @override
  _InvitePageState createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 导航栏阴影
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFF1CAFF), Color(0xFFe0c2fe)],
              //   begin: Alignment.topLeft,
              //   //end: Alignment.centerLeft
              //   end: Alignment.bottomRight
            ),
          ),
        ),
        title: Text(
          '邀请',
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            Utils.getImgPath('invite_bg@3x'), // 登录页背景图片
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 28.0,
            child: Text(
              "我的邀请码",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              top: 68.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 44.0,
                    vertical: 10.0,
                  ),
                  child: Text('SERRev5',
                      style: TextStyle(
                        color: Color(0xFF33A1FC),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )),
          Positioned(
            top: 130.0,
            child: FlatButton(
              onPressed: () {
                print(1);
              },
              child: Text(
                '点击复制',
                style: TextStyle(
                  color: Color(0xFF33A1FC),
                  fontSize: 13.0,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 80.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 80.0,
                    vertical: 50.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        Utils.getImgPath('QRcode'),
                        width: 164.0,
                        height: 164.0,
                        fit: BoxFit.fill,
                      ),
                      Gaps.vGap20,
                      Gaps.vGap20,
                      Gaps.vGap20,
                      Gaps.vGap20,
                      Text('扫码下载安装APP',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
