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
          labelPadding: EdgeInsets.all(0),
          indicatorColor: Color(0x000000),
          tabs: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(0),
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
              padding: EdgeInsets.all(0),
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
              padding: EdgeInsets.all(0),
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
              padding: EdgeInsets.all(0),
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
  double distans = 60.0;
  List _tapeData = [
    {},
    {'msg': 'sb', 'picurl': '', 'type': 'other'},
    {'msg': '', 'picurl': 'touxiang', 'type': 'user'},
    {'msg': '我我对你的思念我对sdsdsd', 'picurl': '', 'type': 'user'},
    {'msg': '', 'picurl': 'wode_toux', 'type': 'user'},
    {'msg': '', 'picurl': 'xueshen2', 'type': 'user'},
    {
      'msg':
          '我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对',
      'picurl': '',
      'type': 'user'
    },
    {'msg': '我我对你的思念我对sdsdsd', 'picurl': '', 'type': 'user'},
    {
      'msg':
          '我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对我我对你的思念我对',
      'picurl': '',
      'type': 'other'
    },
    {'msg': '', 'picurl': 'xueshen2', 'type': 'other'},
    {'msg': '我我对你的思念我对sdsdsd', 'picurl': '', 'type': 'user'},
    {'msg': '', 'picurl': 'xueshen2', 'type': 'user'},
    {
      'msg':
          '我我对你的思念我对sdsdsd我我对你的思念我对sdsdsd我我对你的思念我对sdsdsd我我对你的思念我对sdsdsd我我对你的思念我对sdsdsd我我对你的思念我对sdsdsd我我对你的思念我对sdsdsd',
      'picurl': '',
      'type': 'user'
    },
  ];
  Widget _buildListItem(index) {
    Map item = _tapeData[index];
    return Item(itemData: item);
  }

  double _screenWidth() {
    return MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      // fit: StackFit.expand,
      children: <Widget>[
        Container(
            color: Color(0xFFEEEEEE),
            child: CustomScrollView(
              reverse: true,
              physics: ClampingScrollPhysics(),
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      //创建列表项

                      if (index == 0) {
                        return Padding(
                            padding: EdgeInsets.only(bottom: distans));
                      } else {
                        return _buildListItem(index);
                      }
                    },
                    childCount: _tapeData.length, //50个列表项
                  ),
                )
              ],
            )),

        // 底部输入框

        Container(
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
          child: Flex(
            crossAxisAlignment: CrossAxisAlignment.end,
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: 140.0,
                    // maxWidth: _screenWidth(),
                    minHeight: 40.0,
                    // minWidth: _screenWidth(),
                  ),
                  padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                  child: TextField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.done,
                    onTap: () {},
                    onChanged: (value) {
                      print(value.length);
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 6.0,
                      ),
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
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                  )),
            ],
          ),
        ),
      ],
    );
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
  @override
  Widget build(BuildContext context) {
    Map itemData = widget.itemData;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 10.0,
      ),
      child: itemData['type'] == 'user'
          ? Stack(
              // 右边当前用户
              children: <Widget>[
                Positioned(
                  right: 0.0,
                  child: IconButton(
                    icon: ClipOval(
                      child: Image.asset(
                        Utils.getImgPath('wode_toux'),
                        width: 36.0, // 搜索图片
                        fit: BoxFit.fill,
                      ),
                    ),
                    onPressed: () {
                      print('22');
                      Navigator.pushNamed(context, 'otherspage');
                    },
                  ),
                ),

                itemData['msg'] == ''
                    ? Text('')
                    : Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(60, 6.0, 50.0, 0),
                          child: GestureDetector(
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xFF9C92FF),
                                    borderRadius: BorderRadius.circular(4.0)),
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical: 8.0,
                                    ),
                                    child: Text(
                                      itemData['msg'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                      ),
                                    ))),
                            onLongPress: () {
                              print('onLongPress');
                            },
                          ),
                        ),
                      ),

                //  内容图片
                itemData['picurl'] == ''
                    ? Text('')
                    : Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(60.0, 6.0, 50.0, 0),
                          child: GestureDetector(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.asset(
                                Utils.getImgPath(itemData['picurl']), // 登录页背景图片
                                // width: 260,
                                // fit: BoxFit.fill,
                              ),
                            ),
                            onTap: () {
                              print('onTap');
                            },
                            onLongPress: () {
                              print('onLongPress');
                            },
                          ),
                        ),
                      ),
              ],
            )

          // 左边对话 用户
          : Stack(
              children: <Widget>[
                Positioned(
                  left: 0.0,
                  child: IconButton(
                    icon: ClipOval(
                      child: Image.asset(
                        Utils.getImgPath('touxiang'),
                        width: 36.0, // 搜索图片
                        fit: BoxFit.fill,
                      ),
                    ),
                    onPressed: () {
                      print('22');
                      Navigator.pushNamed(context, 'otherspage');
                    },
                  ),
                ),

                itemData['msg'] == ''
                    ? Text('')
                    : Padding(
                        padding: EdgeInsets.fromLTRB(50.0, 6.0, 60, 0),
                        child: GestureDetector(
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4.0)),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 8.0,
                                  ),
                                  child: Text(
                                    itemData['msg'],
                                    style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 15.0),
                                  ))),
                          onLongPress: () {
                            print('onLongPress');
                          },
                        ),
                      ),

                //  内容图片
                itemData['picurl'] == ''
                    ? Text('')
                    : Padding(
                        padding: EdgeInsets.fromLTRB(50.0, 6.0, 60.0, 0),
                        child: GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Image.asset(
                              Utils.getImgPath(itemData['picurl']), // 登录页背景图片
                              // width: 260,
                            ),
                          ),
                          onTap: () {
                            print('onTap');
                          },
                          onLongPress: () {
                            print('onLongPress');
                          },
                        ),
                      ),
              ],
            ),
    );
  }
}
