import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';

// 好友列表渲染方法
class HaoYouItem extends StatefulWidget {
  HaoYouItem({Key key, this.itemData}) : super(key: key);
  final Map itemData;
  @override
  _HaoYouItemState createState() => _HaoYouItemState();
}

class _HaoYouItemState extends State<HaoYouItem> {
  @override
  Widget build(BuildContext context) {
    Map itemData = widget.itemData;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 头像
        ClipOval(
          child: Image.asset(
            Utils.getImgPath('touxiang'),
            width: 56.0, // 搜索图片
          ),
        ),
        Gaps.vGap5,

        FlatButton(
          color: Color(0x000000),
          //   color: Colors.red,
          highlightColor: Color(0x000000),
          colorBrightness: Brightness.dark,
          splashColor: Color(0x000000),
          child: Column(
            children: <Widget>[
              // 性别 名称
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Image.asset(
                      Utils.getImgPath(itemData['sex'] == 0
                          ? 'female_icon@3x'
                          : 'male_icon@3x'),
                      width: 14.0,
                    ),
                  ),
                  Text(
                    itemData['name'],
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),

              // 学校
              Text(
                itemData['school'],
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12.0,
                ),
              )
            ],
          ),
          onPressed: () {
            print(
              itemData['school'],
            );

            Navigator.pushNamed(context, 'otherspage');
          },
        ),
      ],
    );
  }
}
