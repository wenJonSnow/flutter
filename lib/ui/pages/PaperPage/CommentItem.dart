import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

// 评论每一项渲染
class CommentItem extends StatefulWidget {
  CommentItem({Key key, this.itemData}) : super(key: key);

  final Map itemData;
  @override
  _CommentItemState createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
  @override
  Widget build(BuildContext context) {
    Map itemData = widget.itemData;

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      decoration: BoxDecoration(
        //背景装饰
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFede6f3),
            width: 1.0,
          ),
        ),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.bottomCenter, //指定未定位或部分定位widget的对齐方式
        children: <Widget>[
          Positioned(
            left: 0.0,
            top: 12.0,
            child: IconButton(
                padding: EdgeInsets.all(0),
                icon: ClipOval(
                  child: Image.asset(
                    Utils.getImgPath('meinv'),
                    fit: BoxFit.fill,
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'otherspage');
                }),
          ),
          Positioned(
              left: 32.0,
              top: 0.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: FlatButton(
                        // color: Colors.red,
                        onPressed: () {
                          Navigator.pushNamed(context, 'otherspage');
                        },
                        child: Text(
                          itemData['name'],
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                ],
              )),
          Positioned(
            right: 0.0,
            top: 14.0,
            child: Text(
              itemData['time'],
              style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
            ),
          ),
          Positioned(
            top: 36.0,
            left: 50.0,
            child: Image.asset(
              Utils.getImgPath('dizhi@3x'),
              width: 12.0, // 搜索图片
            ),
          ),
          Positioned(
            top: 34.0,
            left: 66.0,
            child: Text(
              itemData['location'],
              style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: 70.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Text(
                  '        ' + itemData['msg'],
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16.0,
                  ),
                ),
              ),
              //  内容图片

              itemData['picurl'] == ''
                  ? Text('')
                  : Image.asset(
                      Utils.getImgPath(itemData['picurl']), // 登录页背景图片
                      width: 260,
                      // fit: BoxFit.fill,
                    ),
              Gaps.vGap10
            ],
          ),
        ],
      ),
    );
  }
}
