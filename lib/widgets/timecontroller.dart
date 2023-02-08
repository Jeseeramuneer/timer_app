import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../TimerService.dart';
class TimeController extends StatelessWidget {
  const TimeController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TimerService>(context);
    return Container(
      width:100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black26,
        shape: BoxShape.circle,
      ),
      child: IconButton(

        onPressed: (){
          provider.timerPlaying ? Provider.of<TimerService>(context,listen: false).pause():
          Provider.of<TimerService>(context,listen: false).start();
        },
        icon: provider.timerPlaying ? Icon(Icons.pause):Icon(Icons.play_arrow),
        color: Colors.white,
        iconSize: 55,
      ),
    );
  }
}
