import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/movies.dart';
import 'package:news/theme.dart';
 import './login.dart';
// import 'package:adaptive_theme/adaptive_theme.dart';
// import 'package:theme_provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider<ThemeNotifier>(
    create: (_) =>  ThemeNotifier(),
    child: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'News App',
              home: MyHomePage(title: 'NEWS APP'),
            );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<ThemeNotifier>(
      builder: (context, theme, _) =>  MaterialApp(
        theme :theme.getTheme(),
        title:  'login',

        home: Login(),
      ),
    );
  }
}
