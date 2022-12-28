import 'package:flutter/material.dart';

class TabPageChild extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _TabPageChildState();
}

class _TabPageChildState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(0, 3),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Image.asset('assets/profile.png'),
                const Text('사진이 구하기 귀찮아서 이거라도...'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const Text(
                '3,000원',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold
                ),
            ),
          )
        ],
      ),
    );
  }
}