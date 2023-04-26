
import 'package:first_ui_task/control/poviderone.dart';
import 'package:first_ui_task/view/payments.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
      ChangeNotifierProvider(create: (context) => ProviderOne(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer(builder: (BuildContext context, value, Widget? child) => Payments()),
      ),
    );
  }
}
