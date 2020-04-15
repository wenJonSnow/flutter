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
      height: itemData['picurl'] == '' ? 130 : 300,
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
        // alignment: Alignment.centerLeft, //指定未定位或部分定位widget的对齐方式
        children: <Widget>[
          Positioned(
            left: 28.0,
            top: 16.0,
            child: ClipOval(
              child: Image.asset(
                Utils.getImgPath('touxiang'),
                width: 40.0, // 搜索图片
              ),
            ),
          ),
          Positioned(
              left: 60.0,
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
            right: 10.0,
            top: 14.0,
            child: Text(
              itemData['time'],
              style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
            ),
          ),

          Positioned(
            top: 36.0,
            left: 80.0,
            child: Image.asset(
              Utils.getImgPath('dizhi@3x'),
              width: 12.0, // 搜索图片
            ),
          ),
          Positioned(
            top: 34.0,
            left: 100.0,
            child: Text(
              itemData['location'],
              style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 66, 18.0, 10),
            child: Text(
              itemData['msg'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Color(0xFF333333), fontSize: 16.0),
            ),
          ),

          //  内容图片
          Padding(
            padding: EdgeInsets.only(left: 80, top: 120),
            child: itemData['picurl'] == ''
                ? null
                : Image.asset(
                    Utils.getImgPath(itemData['picurl']), // 登录页背景图片
                    width: 260,
                    // fit: BoxFit.fill,
                  ),
          ),
        ],
      ),
    );
  }
}
