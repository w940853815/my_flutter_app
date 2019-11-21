import 'package:flutter/material.dart';
import 'package:my_app/common/utils/common_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_app/common/style/style.dart';
import 'package:my_app/common/style/input_widget.dart';
import 'package:my_app/common/style/string_zh.dart';

class LoginPage extends StatefulWidget {
  static final String sName = "login";
  @override
  State createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> with LoginBloc {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        body: new Container(
          color: Theme.of(context).primaryColor,
          child: new Center(
            child: SafeArea(
              child: SingleChildScrollView(
                child: new Card(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  color: APPColors.cardWhite,
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(
                        left: 30.0, top: 40.0, right: 30.0, bottom: 0.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(APPICons.DEFAULT_USER_ICON),
                          width: 90.0,
                          height: 90.0,
                        ),
                        new Padding(padding: new EdgeInsets.all(10.0)),
                        new APPInputWidget(
                          hintText: '请输入用户名',
                          iconData: APPICons.LOGIN_USER,
                          onChanged: (String value) {
                            _username = value;
                          },
                          controller: userController,
                        ),
                        new Padding(padding: new EdgeInsets.all(10.0)),
                        new APPInputWidget(
                          hintText: '请输入密码',
                          iconData: APPICons.LOGIN_PW,
                          obscureText: true,
                          onChanged: (String value) {
                            _password = value;
                          },
                          controller: pwController,
                        ),
                        new Padding(padding: new EdgeInsets.all(30.0)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

abstract class LoginBloc extends State<LoginPage> {
  final TextEditingController userController = new TextEditingController();
  final TextEditingController pwController = new TextEditingController();
  var _username = "";
  var _password = "";

  @override
  void initState() {
    super.initState();
    initParams();
  }

  @override
  void dispose() {
    super.dispose();
    userController.removeListener(_usernameChange);
    pwController.removeListener(_passwordChange);
  }

  initParams() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _username = await prefs.get("username");
    _password = await prefs.get("password");
    userController.value = new TextEditingValue(text: _username ?? "");
    pwController.value = new TextEditingValue(text: _password ?? "");
  }

  _usernameChange() {
    _username = userController.text;
  }

  _passwordChange() {
    _password = pwController.text;
  }

  loginIn() async {
    if (_username == null || _username.isEmpty) {
      return;
    }
    if (_password == null || _password.isEmpty) {
      return;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("username", _username);
    await prefs.setString("password", _password);
    print(_username);
    print(_password);
  }
}
