import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

class PublishPage extends StatefulWidget {
  @override
  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 导航栏阴影
        centerTitle: false,
        brightness: Brightness.light,
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
              child: Text("发表"),
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

  // bool isFocused = false;

  // 保存输入内容
  void _setInputValue(value) {
    setState(() {
      inputValue = value;
    });
  }

// 创建 focusNode
  FocusNode focusNode = new FocusNode();

  // 弹出底部菜单列表模态对话框
  Future<int> _showModalBottomSheet() {
    return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(
                color: Color(0x000000),
                highlightColor: Color(0x000000),
                colorBrightness: Brightness.dark,
                splashColor: Color(0x000000),
                onPressed: () {
                  print('1111');
                },
                child: Text(
                  '拍摄',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 15.0,
                  ),
                )),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFede6f3),
                    width: 1.0,
                  ),
                ),
              ),
              child: Padding(padding: EdgeInsets.all(0.0)),
            ),
            FlatButton(
                color: Color(0x000000),
                highlightColor: Color(0x000000),
                colorBrightness: Brightness.dark,
                splashColor: Color(0x000000),
                onPressed: () {
                  print('1111');
                },
                child: Text(
                  '从相册中选择',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 15.0,
                  ),
                )),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFede6f3),
                    width: 1.0,
                  ),
                ),
              ),
              child: Padding(padding: EdgeInsets.all(0.0)),
            ),
            FlatButton(
                color: Color(0x000000),
                highlightColor: Color(0x000000),
                colorBrightness: Brightness.dark,
                splashColor: Color(0x000000),
                onPressed: () {
                  print('1111');
                  Navigator.of(context).pop();
                },
                child: Text(
                  '取消',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 15.0,
                  ),
                )),
            Gaps.vGap10,
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // // 监听焦点变化
    // focusNode.addListener(() {
    //   print(focusNode.hasFocus);
    //   setState(() {
    //     isFocused = focusNode.hasFocus;
    //   });
    // });

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
              // 输入框
              TextField(
                  focusNode: focusNode,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                    hintText: '写出你的心事.....',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colours.app_home),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  // textInputAction: TextInputAction.search,
                  maxLines: 2,
                  onChanged: (value) {
                    print(value);
                    _setInputValue(value);
                  }),
              Gaps.vGap50,

              // +  拍照
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // +  背景图
                  FlatButton(
                    color: Color(0x000000),
                    highlightColor: Color(0x000000),
                    colorBrightness: Brightness.dark,
                    splashColor: Color(0x000000),
                    child: Image.asset(
                      Utils.getImgPath('pulish_bg@3x'),
                      width: 240.0,
                      height: 240.0,
                      fit: BoxFit.fill,
                    ),
                    onPressed: () {
                      print('22');
                      focusNode.unfocus();
                      _showModalBottomSheet();
                    },
                  ),

                  // 选择的图片
                  FlatButton(
                    color: Color(0x000000),
                    highlightColor: Color(0x000000),
                    colorBrightness: Brightness.dark,
                    splashColor: Color(0x000000),
                    child: Image.asset(
                      Utils.getImgPath('wode_toux'),
                      width: 220.0,
                      height: 220.0,
                      // fit: BoxFit.fill,
                    ),
                    onPressed: () {
                      print('22333');
                      focusNode.unfocus();
                      _showModalBottomSheet();
                    },
                  ),
                ],
              ),

              Gaps.vGap50,
              Gaps.vGap20,

              // 底部 操作 丢给对象 .....
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: Column(
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
                          Text('丢给对象',
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

                              Navigator.pushNamed(context, 'lostobjectpage');
                            },
                          )
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
                          Text('限制',
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
                              Navigator.pushNamed(context, 'limitpage');
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
                          Text('直接打开丢',
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
                              Navigator.pushNamed(context, 'limitpage');
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
