import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

// 纸条每一项渲染
class TouKanItem extends StatefulWidget {
  TouKanItem({Key key, this.itemData}) : super(key: key);

  final Map itemData;
  @override
  _TouKanItemState createState() => _TouKanItemState();
}

class _TouKanItemState extends State<TouKanItem> {
  @override
  Widget build(BuildContext context) {
    Map itemData = widget.itemData;

    return Container(
      height: itemData['picurl'] == '' ? 160 : 300,
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
              left: 78.0,
              top: 10.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      itemData['name'],
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFF9C92FF),
                        borderRadius: BorderRadius.circular(30.0), //3像素圆角
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2.0),
                        child: Text(
                          itemData['partake'] + '人参与',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ],
              )),
          Positioned(
            right: 18.0,
            top: 10.0,
            child: Text(
              itemData['time'],
              style: TextStyle(color: Color(0xFF999999), fontSize: 10.0),
            ),
          ),
          Positioned(
            top: 36.0,
            left: 78.0,
            child: Image.asset(
              Utils.getImgPath('dizhi@3x'),
              width: 12.0, // 搜索图片
            ),
          ),
          Positioned(
            top: 34.0,
            left: 94.0,
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

          Positioned(
              bottom: 16.0,
              right: 120.0,
              child: Icon(
                Icons.person_pin_circle,
                color: Color(0xFF999999),
                size: 20,
              )),
          Positioned(
            bottom: 18.0,
            right: 18.0,
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: "已捡对象数: ",
                style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
              ),
              TextSpan(
                text: itemData['num'],
                style: TextStyle(color: Colors.black, fontSize: 12.0),
                //    recognizer: _tapRecognizer
              ),
              TextSpan(
                text: "/" + itemData['total'],
                style: TextStyle(color: Color(0xFF999999), fontSize: 12.0),
              ),
            ])),
          ),
        ],
      ),
    );
  }
}
