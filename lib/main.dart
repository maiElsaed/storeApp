import 'package:flutter/material.dart';
import 'package:store_app/scteens/home_page.dart';
import 'package:store_app/scteens/updateprodyct_page.dart';
import 'package:store_app/services/product_service.dart';
import 'package:dio/dio.dart';
void main() {
  runApp(StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id:(context)=>HomePage(),
        UpdateprodyctPage.id:(context)=>UpdateprodyctPage()
      },
    );
  }
}
