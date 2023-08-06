
import 'package:bloc_exp1/bloc/user_bloc.dart';
import 'package:bloc_exp1/ui/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(create: (context) => UserBloc(),
        child: MainPage(),
        ),
      )
    );
  }
}

class MainPages  extends StatelessWidget {
  const MainPages ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Bloc"),),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            
          },
          backgroundColor: Colors.amber,
          ),
          const SizedBox(width: 10),
          FloatingActionButton(onPressed: () {
            
          },
          backgroundColor: Colors.blue,
          ),

        ],
      ),
      body: Center(
        child: AnimatedContainer(
          width: 100,
          height: 100,
          color: Colors.amber,
          duration: const Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
