import 'package:flutter/material.dart';
import 'package:male_flutter_app/common/component_index.dart';
import 'package:male_flutter_app/data/repository/user_repository.dart';

class UserLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Image.asset(Utils.getImgPath('bgLog@3x'), // 登录页背景图片
              width: double.infinity,
              fit: BoxFit.fill),
          LoginBody()
        ],
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controllerName = new TextEditingController();
    TextEditingController _controllerPwd = new TextEditingController();
    // UserRepository userRepository = UserRepository();

    // 登录请求
    void _userLogin() {
      String username = _controllerName.text;
      String password = _controllerPwd.text;
      UserRepository.login(username, password).then((onValue) {
        print(onValue);
        print(111);
        Navigator.pushNamed(context, "navi");
      }).catchError((onError) {
        print(onError);
      });
    }

    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                left: 30,
                top: 320,
                child: Text(
                  '初恋年华',
                  style: TextStyle(
                    color: Colours.app_home,
                    fontSize: 28.0,
                  ),
                ),
              )
            ],
          ),
        )),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controllerName,
                // autofocus: true,
                decoration: InputDecoration(
                    // labelText: "账号",
                    hintText: "请输入账号",
                    // 未获得焦点下划线设为灰色
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide:
                    //       BorderSide(color: Color.fromRGBO(136, 116, 255, 1)),
                    // ),
                    //获得焦点下划线设为蓝色
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colours.app_home),
                    ),
                    icon: Icon(Icons.person, color: Colours.app_home)),
              ),
              Gaps.vGap20,
              TextField(
                controller: _controllerPwd,
                decoration: InputDecoration(
                  // labelText: "密码",
                  hintText: "您的登录密码",
                  //获得焦点下划线设为蓝色r
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colours.app_home),
                  ),
                  icon: Icon(Icons.lock, color: Colours.app_home),
                  //   suffixIcon: Icon(
                  //     Icons.remove_red_eye,
                  //   ),
                ),
                obscureText: true,
              ),
              Gaps.vGap10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatButton(
                    color: Color(0x000000),
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    splashColor: Colors.grey,
                    child: Text(
                      "忘记密码？",
                      style: TextStyle(color: Colours.app_home),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {},
                  ),
                  FlatButton(
                    color: Color(0x000000),
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    splashColor: Colors.grey,
                    child: Text(
                      "注册",
                      style: TextStyle(color: Colours.app_home),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {},
                  )
                ],
              ),
              Gaps.vGap20,
              FlatButton(
                color: Color(0x000000),
                // highlightColor: Colors.blue[700],
                // colorBrightness: Brightness.dark,
                // splashColor: Colors.red,

                child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Utils.getImgPath('log@3x')),
                          fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 140.0, vertical: 16.0),
                      child: InkWell(
                        child: Text(
                          '登录',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {
                  _userLogin();
                },
              ),
            ],
          ),
        )),
      ],
    );
  }
}
