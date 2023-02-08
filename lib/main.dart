import 'package:flutter/material.dart';
import 'package:timer_app/pomotimerScreen.dart';
import 'package:provider/provider.dart';

import 'TimerService.dart';
void main()=>runApp(
 ChangeNotifierProvider(create: (context)=>TimerService(),
   child: MyApp()
));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PomotimerScreen(),
    );
  }
}
