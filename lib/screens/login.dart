import 'package:app_bar/components/btn.dart';
import 'package:app_bar/components/link_btn.dart';
import 'package:app_bar/components/tf.dart';
import 'package:app_bar/screens/home.dart';
import 'package:app_bar/utils/app_settings.dart';
import 'package:app_bar/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const route_id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailCtr;
  TextEditingController _passwordCtr;

  @override
  void initState() {
    super.initState();
    _emailCtr = TextEditingController();
    _passwordCtr = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: context.watch<AppSettings>().appColor,
      ),
      body: Container(
        child: Column(
          children: [
            TF(
              controller: _emailCtr,
              helpText: "Email",
              hintText: "Email",
              prefixIcon: Icons.email,
            ),
            TF(
              controller: _passwordCtr,
              prefixIcon: Icons.lock_open,
              isPassword: true,
              helpText: "Password",
              hintText: "Password",
            ),
            Row(
              children: [
                Expanded(
                  child: Btn(
                    color: context.watch<AppSettings>().appColor,
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                      Utils.saveLoggedIn(true);
                    },
                    text: 'LOGIN',
                  ),
                ),
              ],
            ),
            LinkBtn(
              text: 'Forgot Password?',
              color: Colors.green,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
