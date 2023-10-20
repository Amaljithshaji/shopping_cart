import 'package:flutter/material.dart';
import 'package:model4/provider/provider.dart';
//import 'package:model4/database/Imagedata.dart';
import 'package:model4/view/cart/cart.dart';
import 'package:provider/provider.dart';

import 'view/home/home.dart';

void main() {
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (_)=>Model1())],
  child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Home()
      ,debugShowCheckedModeBanner: false,
      routes: {'/cart':(context) => cart(name: 0,)},
    );
  }
}
