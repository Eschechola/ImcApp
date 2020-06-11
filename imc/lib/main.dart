import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:imc/ui/android/android-app.dart';
import 'package:imc/ui/ios/ios-app.dart';


void main(){
  //verifica se é android ou IOS
  if(Platform.isIOS){
    runApp(IosAPP());
  }
  else{
    runApp(AndroidApp());
  }
}