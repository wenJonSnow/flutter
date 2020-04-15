import 'package:flutter/material.dart';

import 'package:male_flutter_app/common/component_index.dart';

// 消息
class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller
  FocusNode focusNode = new FocusNode();

  String inputValue = '';
  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          //生成Tab菜单
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Color(0x000000),
          tabs: <Widget>[
            FlatButton(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    Utils.getImgPath('jianzi@3x'),
                    width: 30.0,
                  ),
                  Text(
                    '毽子碎片 x1',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    Utils.getImgPath('qianbi@3x'),
                    width: 20.0,
                  ),
                  Gaps.vGap10,
                  Text(
                    '铅笔碎片 x1',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    Utils.getImgPath('shuicaibi@3x'),
                    width: 20.0,
                  ),
                  Gaps.vGap10,
                  Text(
                    '水彩笔碎片 x1',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    Utils.getImgPath('notebook@3x'),
                    width: 15.0,
                  ),
                  Gaps.vGap10,
                  Text(
                    '笔记本碎片 x1',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),

        elevation: 0, // 导航栏阴影
        centerTitle: false,
        title: Text(
          '对方正在输入...',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, //如果leading为null，是否自动实现默认的leading按钮
        leading: Builder(
          builder: (context) {
            return IconButton(
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
  bool moreInputHeight = false;
  double distans = 40.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // fit: StackFit.expand,
      children: <Widget>[
        ListView.builder(
            reverse: true,
            itemCount: 20,
            // itemExtent: 50.0, //强制高度为50.0
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Padding(padding: EdgeInsets.only(bottom: distans));
              } else {
                return ListTile(title: Text("$index"));
              }
            }),
        Positioned(
          bottom: 0.0,
          child: Container(
            width: 640, // 这个地方 有bug
            decoration: BoxDecoration(
              //背景装饰
              color: Colors.white,

              border: Border(
                top: BorderSide(
                  color: Color(0xFFede6f3),
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Container(
                    height: moreInputHeight ? null : 40.0,
                    width: 300,
                    child: TextField(
                      maxLines: moreInputHeight ? null : 1,
                      textInputAction: TextInputAction.done,
                      onTap: () {},
                      onChanged: (value) {
                        print(value.length);
                     
                        if (value.length > 29) {
                          setState(() {
                            moreInputHeight = true;
                          });
                        } else {
                          setState(() {
                            moreInputHeight = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFEEEEEE),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Image.asset(
                    Utils.getImgPath('biaoqing@3x'),
                    width: 24.0,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    Utils.getImgPath('mkf@3x'),
                    width: 20.0,
                  ),
                  onPressed: () {},
                ),
              ],
              // mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
            ),
          ),
        ),
      ],
    );
  }
}
