import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/utils.dart';
import 'package:timer_app/widgets/progress.dart';
import 'package:timer_app/widgets/timecontroller.dart';
import 'package:timer_app/widgets/timercard.dart';
import 'package:timer_app/widgets/timeroptions.dart';

import 'TimerService.dart';
class PomotimerScreen extends StatefulWidget {
  const PomotimerScreen({Key? key}) : super(key: key);

  @override
  State<PomotimerScreen> createState() => _PomotimerScreenState();
}

class _PomotimerScreenState extends State<PomotimerScreen> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentstate),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:renderColor(provider.currentstate),
        title: Text("POMOTIMER",
      style: textStyle(25,Colors.white,FontWeight.w700)
      ),
        actions: [
          IconButton(
            iconSize: 30,
              onPressed: (){
              Provider.of<TimerService>(context,listen: false).reset();
              },
              icon: Icon(Icons.refresh,
              size: 40,
              color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
       child: Container(
         alignment: Alignment.center,
         child: Column(
           children: [
             SizedBox(height: 15),
             TimerCard(),
             SizedBox(height: 40,),
             TimerOptions(),
             SizedBox(height: 20),
             TimeController(),
             SizedBox(height: 20,),
             Progress(),
           ],
         ),
       ),
     ),


    );
  }
}
