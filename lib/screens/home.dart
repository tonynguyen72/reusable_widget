import 'package:app_bar/components/appbar.dart';
import 'package:app_bar/screens/settings_screen.dart';
import 'package:app_bar/utils/app_settings.dart';
import 'package:app_bar/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const route_id = 'home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _initTheme();
  }

  _initTheme() async {
    int themeIndex = await Utils.getThemeIndex();
    context.read<AppSettings>().updateColor(themeIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(
          height: 120,
          color: context.watch<AppSettings>().appColor,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  'HOME',
                  textAlign: TextAlign.center,
                )),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsScreen()));
                  },
                ),
              ])),
      body: Container(
        color: context.watch<AppSettings>().appColor,
      ),
    );
  }
}
