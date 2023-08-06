import 'dart:math';

import 'package:bloc_exp1/bloc/user_bloc.dart';
import 'package:bloc_exp1/model/user.dart';
import 'package:bloc_exp1/ui/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});



  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Demo MVVM")),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        ElevatedButton(onPressed: () {
          bloc.add(random.nextInt(10)+1);
        }, child: Text("Pick Random")),
        BlocBuilder<UserBloc,User>(builder: (context,user) => (user is UninitializedUser) ? Container() : UserCard(user))
      ]),
    );
  }
}
