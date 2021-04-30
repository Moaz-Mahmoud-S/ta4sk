import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  String tittle;


  Email (String tittle)
  {
    this.tittle=tittle;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container
        (
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20)

          /* border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
            left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
            right: BorderSide(width: 1.0, color: Colors.white),
            bottom: BorderSide(width: 2.0, color: Color(0xFFFF000000)),
          ) */
        ),
        width: 80,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Text(tittle, style: TextStyle(color: Colors.white,fontSize: 20)),
          SizedBox(width: 80,),
          Icon(
            Icons.send,
            color: Colors.yellow,
          )
          ],
        ),
      ),
    );
  }

}