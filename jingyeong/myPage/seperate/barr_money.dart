import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarrMoney extends StatefulWidget{
  State<StatefulWidget> createState() => _BarrMoneyState();
}

class _BarrMoneyState extends State {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 5, 0),
              child: const Text(
                '바르머니',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                child: const Text(
                  "4,000원",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                )
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      //  송금 페이지 열기
                    },
                    child: const Text(
                      '송금',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //  송금 페이지 열기
                    },
                    child: const Text(
                      '충전',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 5),
              child: Row(
                children: [
                  IconButton (
                    constraints: const BoxConstraints(),
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: (){ },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '결제 내역',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ),

          ],
        ),
      ],
    );
  }
}