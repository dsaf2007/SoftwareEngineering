import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parkinglot/pages/mypage.dart';

String checkPassword = '';
String CarNum = '';
bool IsAdmin = false;
String Name = '';
String User_ID = '';
String User_Password = '';
String User_PhoneNum = '';

class FixProfileINFO extends StatefulWidget {
  @override
  _FixProfileINFOState createState() => _FixProfileINFOState();
}

class _FixProfileINFOState extends State<FixProfileINFO> {
  @override
  Widget build(BuildContext context) {
    bool? _ischecked = false;
    return Scaffold(
      appBar: AppBar(
          // 값 전달 받기
        title: Text('회원정보수정',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            )
          ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black, 
        leading: GestureDetector( 
        child: const Icon(Icons.arrow_back)
        )
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Text(
              '회원정보를 입력해주세요.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: TextFormField(
              autofocus: true,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                Name = text;
              },
              decoration: InputDecoration(
                icon: const Icon(Icons.person),
                border: OutlineInputBorder(),
                hintText: '이름',
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: TextFormField(
              autofocus: true,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                User_PhoneNum = text;
              },
              decoration: InputDecoration(
                icon: const Icon(Icons.phone),
                border: OutlineInputBorder(),
                hintText: '전화번호',
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: TextFormField(
              autofocus: true,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                User_ID = text;
              },
              decoration: InputDecoration(
                icon: const Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: '아이디(이메일)',
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: TextFormField(
              autofocus: true,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                User_Password = text;
              },
              decoration: InputDecoration(
                icon: const Icon(Icons.password),
                border: OutlineInputBorder(),
                hintText: '새 비밀번호',
              ))
            ,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: TextFormField(
              autofocus: true,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                icon: const Icon(Icons.password),
                border: OutlineInputBorder(),
                hintText: '새 비밀번호 확인',
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: TextFormField(
              autofocus: true,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                CarNum = text;
              },
              decoration: InputDecoration(
                icon: const Icon(Icons.car_rental),
                border: OutlineInputBorder(),
                hintText: '차량번호',
              )
            ),
          ),
        // TextButton(
        //   style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all(Colors.blue)),
        //   onPressed: () {
        //     FirebaseFirestore.instance.collection("User").doc(Name).set({
        //       "CarNum": CarNum,
        //       "IsAdmin": IsAdmin,
        //       "Name": Name,
        //       "User_ID": User_ID,
        //       "User_Password": User_Password,
        //       "User_PhoneNum": User_PhoneNum
        //     });
        //   }, child: null,
        // ),
          Center(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 15, 5),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: blue,
              minimumSize: Size(165, 20),
              padding: const EdgeInsets.all(10.0),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder: (context) => FixProfileINFO())
              );
            },
            child: const Text('확인',
              style: TextStyle(color: Colors.white)
            ),
          ),
          SizedBox(height: 5),
        ]
      )
    );
  }
}