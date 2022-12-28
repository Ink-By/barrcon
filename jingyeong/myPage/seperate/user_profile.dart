import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  State<StatefulWidget> createState() => _UserProfileState();
}

class _UserProfileState extends State{
  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      height: 60,
                      width: 60,
                      child: Image.asset('assets/profile.png')
                  ),  //  유저 프로필 사진 불러오기
                  const Text("정현제"),  //  유저 이름 불러오기
                  IconButton (
                    constraints: const BoxConstraints(),
                    icon: const Icon(Icons.settings),
                    onPressed: (){
                      // Navigator.push(
                      //   //  개인 정보 수정 창 열려야 함
                      // );
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: Row(
                children: [
                  IconButton (
                    constraints: const BoxConstraints(),
                    icon: const Icon(Icons.warning),
                    onPressed: (){ },
                  ),
                  const Text("신고내역"),
                ],
              )
            ),
          ],
        );
  }

}