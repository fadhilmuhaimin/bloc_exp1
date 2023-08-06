import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent{to_amber, to_light_blue}

class ColorBloc extends Bloc<ColorEvent,Color>{

  

  ColorBloc() : super(Colors.amber){
    on((event, emit) {
      if(event == ColorEvent.to_amber){
        emit(Colors.amber);
      }
    });
    
  }



 

  

}