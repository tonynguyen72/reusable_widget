import 'package:app_bar/screens/home.dart';
import 'package:app_bar/screens/login.dart';
import 'package:app_bar/screens/settings_screen.dart';

class Routes {
  //
  static routes() {
    return {
      LoginScreen.route_id: (context) => LoginScreen(),
      HomeScreen.route_id: (context) => HomeScreen(),
      SettingsScreen.route_id: (context) => SettingsScreen(),
    };
  }

  static initRoute() {
    return LoginScreen.route_id;
  }
  static homeRoute() {
    return HomeScreen.route_id;
  }
}
