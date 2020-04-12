import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

class LimitPage extends StatefulWidget {
  @override
  _LimitPageState createState() => _LimitPageState();
}

class _LimitPageState extends State<LimitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '限制',
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

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  String inputValue;

  String active = 'school';
  void _setActiveState(name) {
    setState(() {
      active = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 10.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // 底部 操作 丢给对象 .....
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: Column(
                  children: <Widget>[
                    //消息开关
                    Container(
                      height: 50.0,
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
                          Text('可捡取人数',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15.0,
                              )),
                          active == 'classRoom'
                              ? Padding(
                                  padding: EdgeInsets.only(right: 14.0),
                                  child: Icon(
                                    Icons.done,
                                    color: Color(0xFF9C92FF),
                                  ),
                                )
                              : FlatButton(
                                  child: Text(''),
                                  onPressed: () {
                                    _setActiveState('classRoom');
                                  },
                                )
                        ],
                      ),
                    ),

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
                          Text('可捡取的学校',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15.0,
                              )),
                          IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xFF999999),
                            ),
                            onPressed: () {
                              print('22');
                              _setActiveState('appoint');
                              Navigator.pushNamed(context, 'appointpage');
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
