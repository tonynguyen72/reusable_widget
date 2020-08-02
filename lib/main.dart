import 'package:app_bar/utils/routes.dart';
import 'package:app_bar/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'utils/app_settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String route = Routes.initRoute();
  bool isLoggedIn = await Utils.isLoggedIn();
  if (isLoggedIn) {
    route = Routes.homeRoute();
  }
  runApp(MyApp(route: route));
}

class MyApp extends StatelessWidget {
  MyApp({this.route});
  final String route;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppSettings(),
        )
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        routes: Routes.routes(),
        initialRoute: route,
      ),
    );
  }
}
