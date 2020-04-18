import 'package:flutter/material.dart';

import 'package:male_flutter_app/common/component_index.dart';

// 消息
class MessageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MessageScreenState();
}

class MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 导航栏阴影
        centerTitle: true,
        title: Text(
          '消息',
          style: TextStyle(color: Colors.black, fontSize: 18),
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
              icon: Icon(Icons.search, color: Colors.black), //自定义图标
              onPressed: () {
                print(1);
              },
            ),
          )
        ],
      ),
      body: Content(),
    );
  }
}

// 消息内容主题
class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  List _tapeData = [
    {
      'name': '不服输的猫22222',
      'pic': '',
      'partake': '',
      'time': '12:00',
      'msg':
          '我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': '',
      'release': true
    },
    {
      'name': '不服输的猫22222',
      'pic': '',
      'partake': '',
      'time': '12:00',
      'msg':
          '我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': '',
      'release': true
    },
    {
      'name': '不服输的猫22222',
      'pic': '',
      'partake': '',
      'time': '12:00',
      'msg':
          '我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': '',
      'release': true
    },
    {
      'name': '李帅妞',
      'pic': '',
      'partake': '',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'meinv'
    },
    {
      'name': '00后老阿姨',
      'pic': '',
      'partake': '',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': ''
    },
    {
      'name': '00后老阿姨',
      'pic': '',
      'partake': '',
      'time': '12:00',
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
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'meinv',
      'release': true
    },
    {
      'name': '00后老阿姨',
      'pic': '',
      'partake': '53',
      'time': '12:00',
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
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
    {
      'name': '互撸娃大金刚',
      'pic': '',
      'partake': '53',
      'time': '12:00',
      'msg': '我对你的思念已经无法自拔！',
      'location': '山东大学',
      'num': '15',
      'total': '20',
      'picurl': 'xueshen2',
      'release': true
    },
  ];

  //每条渲染方法
  Widget _buildListItem(index) {
    Map item = _tapeData[index];
    return Item(itemData: item);
  }

  @override
  Widget build(BuildContext context) {
    Widget divider = Divider(
      color: Color(0xFFc7c7c7),
      indent: 64.0,
    );
    return Container(
      color: Colors.white,
      child: ListView.builder(
          itemCount: _tapeData.length,
          // separatorBuilder: (BuildContext context, int index) {
          //   return divider;
          // },
          itemExtent: 70.0, //强制高度为50.0
          itemBuilder: (BuildContext context, int index) {
            return _buildListItem(index);
          }),
    );
  }
}

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
      decoration: BoxDecoration(
        //背景装饰
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFede6f3),
            width: 1.0,
          ),
        ),
      ),
      child: FlatButton(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        onPressed: () {
          Navigator.pushNamed(context, 'chatpage');
        },
        onLongPress: () {},
        child:
            // Row(
            //   // mainAxisSize: MainAxisSize.min,
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     Row(
            //       mainAxisSize: MainAxisSize.min,
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: <Widget>[
            //         ClipRRect(
            //           borderRadius: BorderRadius.circular(6.0),
            //           child: Image.asset(
            //             Utils.getImgPath('meinv'),
            //             width: 44.0, // 搜索图片
            //             height: 44.0,
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            //         Container(
            //           height: 40.0,
            //           width: 10.0,
            //           // color: Colors.green,
            //           child: itemData['partake'].isNotEmpty
            //               ? Stack(
            //                   overflow: Overflow.visible,
            //                   children: <Widget>[
            //                     Positioned(
            //                       left: -8.0,
            //                       top: -4.0,
            //                       child: DecoratedBox(
            //                           decoration: BoxDecoration(
            //                             color: Color(0xFFFF5A8E),
            //                             borderRadius:
            //                                 BorderRadius.circular(10.0), //3像素圆角
            //                           ),
            //                           child: Padding(
            //                             padding: EdgeInsets.symmetric(
            //                                 horizontal: 1.0, vertical: 1.0),
            //                             child: Text(
            //                               itemData['partake'],
            //                               style: TextStyle(
            //                                 fontSize: 10,
            //                                 color: Colors.white,
            //                               ),
            //                             ),
            //                           )),
            //                     )
            //                   ],
            //                 )
            //               : Text(''),
            //         ),
            //         Column(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: <Widget>[
            //             Text(
            //               itemData['name'],
            //               style: TextStyle(
            //                 fontSize: 15,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.w500,
            //               ),
            //             ),

            //             Container(
            //               width: 240.0,
            //               child: Text(
            //                 itemData['msg'],
            //                 maxLines: 1,
            //                 overflow: TextOverflow.ellipsis,
            //                 style:
            //                     TextStyle(color: Color(0xFF999999), fontSize: 12.0),
            //               ),
            //             )
            //           ],
            //         ),
            //       ],
            //     ),
            //     Text(
            //       itemData['time'],
            //       style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
            //     ),
            //   ],
            // ),

            Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    // left: 10.0,
                    top: 8.0,
                    // child: ClipOval(
                    //   child: Image.asset(
                    //     Utils.getImgPath('touxiang'),
                    //     width: 48.0, // 搜索图片
                    //     height: 48.0,
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: Image.asset(
                        Utils.getImgPath('meinv'),
                        width: 44.0, // 搜索图片
                        height: 44.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  itemData['partake'].isNotEmpty
                      ? Positioned(
                          left: 35.0,
                          top: 6.0,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color(0xFFFF5A8E),
                                borderRadius:
                                    BorderRadius.circular(10.0), //3像素圆角
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.0, vertical: 2.0),
                                child: Text(
                                  itemData['partake'],
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        )
                      : Text(''),
                  Positioned(
                      left: 52.0,
                      top: 10.0,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              itemData['name'],
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(54.0, 30.0, 40.0, 10.0),
                    child: Text(
                      itemData['msg'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(color: Color(0xFF999999), fontSize: 12.0),
                    ),
                  ),
                  // Positioned(
                  //   right: 4.0,
                  //   top: 10.0,
                  //   child: itemData['release'] == true
                  //       ? DecoratedBox(
                  //           decoration: BoxDecoration(
                  //             color: Color(0xFF9C92FF),
                  //             borderRadius: BorderRadius.circular(30.0), //3像素圆角
                  //           ),
                  //           child: Padding(
                  //             padding: EdgeInsets.symmetric(
                  //                 horizontal: 10.0, vertical: 2.0),
                  //             child: Text(
                  //               '即将解除好友关系',
                  //               style: TextStyle(
                  //                 fontSize: 10,
                  //                 color: Colors.white,
                  //               ),
                  //             ),
                  //           ))
                  //       : Text(''),
                  // ),
                  Positioned(
                    top: 10.0,
                    right: 0.0,
                    child: Text(
                      itemData['time'],
                      style:
                          TextStyle(color: Color(0xFF999999), fontSize: 12.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
