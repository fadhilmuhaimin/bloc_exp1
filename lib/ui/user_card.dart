import 'package:bloc_exp1/model/user.dart';
import 'package:flutter/material.dart';

class UserCard  extends StatelessWidget {
  
  
  
  final User user;
  UserCard(this.user);



  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Color(0x55000000),offset: Offset(1,1),blurRadius: 7)
      ],
      borderRadius: BorderRadius.circular(15) ,
      border: Border.all(color: Colors.blueGrey)
      ),
      child: Row(children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: NetworkImage(user.avatar?? ""))
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("id${user.id}"),
            Text("Nama${user.firstName}"),
            Text("Email${user.email}"),

          ],
        )
      ]),
    );
  }
}