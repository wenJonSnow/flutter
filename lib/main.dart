import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'http.dart'; // make dio as global top-level variable

import 'package:male_flutter_app/common/component_index.dart';

// 页面
import 'package:male_flutter_app/ui/pages/user/user_login_page.dart';
import 'package:male_flutter_app/ui/pages/navi/navi.dart';
import 'package:male_flutter_app/ui/pages/othersPage/othersPage.dart';
import 'package:male_flutter_app/ui/pages/InvitePage/InvitePage.dart';
import 'package:male_flutter_app/ui/pages/SettingPage/SettingPage.dart';
import 'package:male_flutter_app/ui/pages/PublishPage/PublishPage.dart';
import 'package:male_flutter_app/ui/pages/LostObjectPage/LostObjectPage.dart';
import 'package:male_flutter_app/ui/pages/AppointPage/AppointPage.dart';
import 'package:male_flutter_app/ui/pages/LimitPage/LimitPage.dart';
import 'package:male_flutter_app/ui/pages/PaperPage/PaperPage.dart';
import 'package:male_flutter_app/ui/pages/ChatPage/ChatPage.dart';

void main() {
  dio.options.baseUrl = Constant.server_address;
  dio.options.connectTimeout = 5000;
  dio.options.receiveTimeout = 3000;
  dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
    // 在发送请求之前做一些预处理
    print(options.data);
    print(options.baseUrl);
    print(options.path);
  }, onResponse: (Response response) {
    // 在返回响应数据之前做一些预处理
    return response; // continue
  }, onError: (DioError e) {
    // 当请求失败时做一些预处理
    return e; //continue
  }));
  runApp(MaleApp());
}

class MaleApp extends StatefulWidget {
  @override
  _MaleAppState createState() => _MaleAppState();
}

class _MaleAppState extends State<MaleApp> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'male_app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //   home: MyHomePage(title: 'Flutter Demo Home Page'),
        //   home: UserLoginPage(),
        initialRoute: "/", //名为"/"的路由作为应用的home(首页)
        //注册路由表
        routes: {
          '/': (context) => UserLoginPage(),
          'navi': (context) => Navi(),
          'otherspage': (context) => OthersPage(),
          'invitepage': (context) => InvitePage(),
          'settingpage': (context) => SettingPage(),
          'publishpage': (context) => PublishPage(),
          'lostobjectpage': (context) => LostObjectPage(),
          'appointpage': (context) => AppointPage(),
          'limitpage': (context) => LimitPage(),
          'paperpage': (context) => PaperPage(),
          'chatpage': (context) => ChatPage(),
        });
  }
}
