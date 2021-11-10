import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './models/ParkingLot.dart';
import './util/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<ParkingLot> parkinglot = [
    ParkingLot('park.png','대한극장주차장1', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
    ParkingLot('park.png','장충공영주차장1', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
    ParkingLot('park.png','필동공영주차장1', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
    ParkingLot('park.png','장충공영주차장2', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
    ParkingLot('park.png','대한극장주차장2', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
    ParkingLot('park.png','필동공영주차장2', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
    ParkingLot('park.png','장충공영주차장3', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
    ParkingLot('park.png','대한극장주차장3', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
    ParkingLot('park.png','필동공영주차장3', '서울 중구 필동 2가','02-1234-5678', 800, 30, true),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextFormField(
          controller: TextEditingController(),
          decoration: InputDecoration(
            hintText: '주차장 검색',
            hintStyle: TextStyle(color: Colors.grey),
            suffixIcon: IconButton(icon: Icon(Icons.search), onPressed: () {  },),
          )

        )
      ),
      body: ListView.builder(
        itemCount: parkinglot.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 3.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: Text(parkinglot[index].name,
                            style: TextStyle(fontSize: 23, color: blue, fontWeight: FontWeight.bold)),
                subtitle: Column(
                    children:[
                        Row(
                          children : [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children : [
                                  Text(parkinglot[index].address),
                                  Text(parkinglot[index].number),
                                  Text('30분 ${parkinglot[index].cost} 원'),
                                  Text('총 ${parkinglot[index].total_space} 면'),
                                ]
                              ),
                            SizedBox(width: 160),
                            Image.asset('lib/images/park.png',width: 70, height: 70)
                            ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                          TextButton(
                            onPressed: () {  },
                            style: TextButton.styleFrom(backgroundColor: lightGrey, minimumSize: Size(167,20)),
                            child: const Text('즐겨찾기 추가', style: TextStyle(color: darkGrey)),
                          ),
                          SizedBox(width: 10),
                          TextButton(
                            onPressed: () {  },
                            style: TextButton.styleFrom(backgroundColor: blue, minimumSize: Size(167,20)),
                            child: const Text('예약하기', style: TextStyle(color: Colors.white)),
                          )]
                        )
                  ]
                ),
                // --- 이미지 넣기 ---
              ),
            )
          );
        },
      )
    );
  }

}
