import 'package:app_bar/components/color_cell.dart';
import 'package:app_bar/components/link_btn.dart';
import 'package:app_bar/screens/login.dart';
import 'package:app_bar/utils/app_settings.dart';
import 'package:app_bar/utils/const.dart';
import 'package:app_bar/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const route_id = 'settings';
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<AppSettings>().appColor,
        title: Text('Settings'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 30),
            Wrap(
              children: List<Widget>.generate(
                  Constants.colors.length,
                  (index) => GestureDetector(
                        onTap: () {
                          context.read<AppSettings>().updateColor(index);
                          Utils.saveThemeIndex(index);
                        },
                        child: ColorCell(
                          color: Constants.colors[index],
                        ),
                      )),
            ),
            LinkBtn(
              text: 'Logout',
              onPress: () async {
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginScreen.route_id, (route) => false);
                Utils.saveLoggedIn(false);
                Utils.saveThemeIndex(0);
                context.read<AppSettings>().updateColor(0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
