
import 'package:flutter/material.dart';
import './storageManager.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:provider/provider.dart';
import './main.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    textSelectionColor: Colors.white,


    primarySwatch: Colors.grey,
    primaryColor: Colors.purpleAccent,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.purpleAccent,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black87,
          unselectedItemColor: Colors.white60,
          selectedItemColor: Colors.purpleAccent
      )
  );

  final lightTheme = ThemeData(
      textSelectionColor: Colors.black,
    primarySwatch: Colors.purple,
    primaryColor: Colors.purpleAccent,
    brightness: Brightness.light,
    backgroundColor:  Colors.white,
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.purple),
    dividerColor: Colors.white54,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white60,
      unselectedItemColor: Colors.black87,
      selectedItemColor: Colors.purpleAccent

    )
  );

  ThemeData _themeData= ThemeData(
    // primarySwatch: Colors.grey,
    // primaryColor: Colors.white,
    // brightness: Brightness.light,
    // // backgroundColor: const Color(0xFFE5E5E5),
    // accentColor: Colors.black,
    // accentIconTheme: IconThemeData(color: Colors.white),
    // dividerColor: Colors.white54,
  );
  ThemeData getTheme() => _themeData;

  ThemeNotifier(){
    StorageManager.readData('themeMode').then((value) {
      print('value read from storage: ' + value.toString());
      var themeMode = value ?? 'light';
      if (themeMode == 'light') {
        _themeData = lightTheme;
      } else {
        print('setting dark theme');
        _themeData = darkTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    _themeData = darkTheme;
    StorageManager.saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    StorageManager.saveData('themeMode', 'light');
    notifyListeners();
  }
}