import 'package:flutter/material.dart';
import 'package:gold_spoon/screen/home_screen.dart';
import 'package:gold_spoon/screen/my_page.dart';
import 'package:gold_spoon/screen/party_screen.dart';
import 'package:gold_spoon/screen/spoon_shop.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => PartyScreen(),
        '/myPage': (context) => MyPage(),
        '/spoonShop': (context) => SpoonShop(),
      },
    )
  );
}
