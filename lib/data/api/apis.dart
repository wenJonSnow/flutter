class MaleApi {
  // 注册

  /// 获取公众号列表 http://wanandroid.com/wxarticle/chapters/json
  static const String WXARTICLE_CHAPTERS = "wxarticle/chapters";

  /// 查看某个公众号历史数据 http://wanandroid.com/wxarticle/list/405/1/json
  /// 在某个公众号中搜索历史文章 http://wanandroid.com/wxarticle/list/405/1/json?k=Java
  static const String WXARTICLE_LIST = "wxarticle/list";

  static const String user_register = "user/register"; //注册
  static const String user_login = "user/login"; //登录
  static const String user_logout = "user/logout"; //退出

  static const String lg_collect_list = "lg/collect/list"; //收藏文章列表
  static const String lg_collect = "lg/collect"; //收藏站内文章
  static const String lg_uncollect_originid = "lg/uncollect_originId"; //取消收藏

}
