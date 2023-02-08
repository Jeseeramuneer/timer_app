import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/TimerService.dart';
import 'package:timer_app/utils.dart';
class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${provider.rounds}/4",
              style: textStyle(30,Colors.white,FontWeight.bold),),
            Text("${provider.goals}/12",
              style: textStyle(30,Colors.white,FontWeight.bold),)
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Round",style: textStyle(20,Colors.grey[350],FontWeight.bold),),
            Text("Goal",style: textStyle(20,Colors.grey[350],FontWeight.bold),)
          ],
        )
      ],
    );
  }
}
