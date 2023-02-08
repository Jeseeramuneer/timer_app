import 'dart:async';
import 'package:flutter/material.dart';
import 'package:timer_app/utils.dart';

class TimerService extends ChangeNotifier{
  late Timer timer;
  double currentDuration=10;
  double selectedTime=10;
  bool timerPlaying =false;
  int rounds=0;
  int goals=0;
  String currentstate="Focus";

 void start(){
   timerPlaying=true;
   timer=Timer.periodic(Duration(seconds: 1), (timer) {
     if(currentDuration==0) {
       handleNextRound();
     }else{
       currentDuration--;
       notifyListeners();
     }
   });
 }
 void pause(){
   timer.cancel();
   timerPlaying=false;
   notifyListeners();
 }

 void reset(){
   timer.cancel();
 currentstate="Focus";
 currentDuration=1500;
 selectedTime=1500;
 goals=0;
 rounds=0;
 timerPlaying=false;
 notifyListeners();
 }


void selectTime(double seconds){
  selectedTime = seconds;
  currentDuration = seconds;
  notifyListeners();
}

void handleNextRound(){
  if(currentstate=="Focus" && rounds !=3){
    currentstate="Break";
    currentDuration=5;
    selectedTime=5;
    rounds++;
    goals++;
  }else if(currentstate=="Break"){
    currentstate="Focus";
    currentDuration=10;
    selectedTime=10;
  }else if(currentstate=="Focus" && rounds==3){
    currentstate="LONG BREAK";
    currentDuration=10;
    selectedTime=10;
    rounds++;
    goals++;
  }else if (currentstate=="LONG BREAK"){
    currentstate="Focus";
    currentDuration=10;
    selectedTime=10;
    rounds=0;
  }
  notifyListeners();
}
}