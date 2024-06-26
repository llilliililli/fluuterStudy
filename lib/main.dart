import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/second.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.green,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  var postList = [ //part6 postDataList
    {
      "title": "Sample Title 1",
      "color": Colors.red
    },
     {
      "title": "Sample Title 2",
      "color": Colors.yellow
    },
     {
      "title": "Sample Title 3",
      "color": Colors.green
    },
     {
      "title": "Sample Title 4",
      "color": Colors.blue
    },
     {
      "title": "Sample Title 5",
      "color": Colors.pink
    },
     {
      "title": "Sample Title 6",
      "color": Colors.purple
    },
  ];

  var postList2 = [
    {
      "number" : "0",
      "color" : Colors.amber
    },
     {
      "number" : "1",
      "color" : Colors.red
    },
     {
      "number" : "2",
      "color" : Colors.blue
    },
     {
      "number" : "3",
      "color" : Colors.green
    },
     {
      "number" : "4",
      "color" : Colors.purple
    },
     {
      "number" : "5",
      "color" : Colors.pink
    },
     {
      "number" : "6",
      "color" : Colors.orange
    },
     {
      "number" : "7",
      "color" : Colors.blueGrey
    },
     {
      "number" : "8",
      "color" : Colors.deepPurple
    },
     {
      "number" : "9",
      "color" : Colors.greenAccent
    },
     {
      "number" : "10",
      "color" : Colors.redAccent
    },
     {
      "number" : "11",
      "color" : Colors.yellowAccent
    },
  ];

  String imgUrl =  'https://i.ytimg.com/vi/kxE8HKKTf_U/maxresdefault.jpg'; //part12 이미지 url
  String imageUrl2 = 'https://blog.ko.playstation.com/tachyon/sites/9/2023/02/668ab9fb014d32fa65a9697087f87cf3026b953d.jpg'; //part12 이미지 url2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // 상단 타이틀
        title: const Text("TEST TITLE"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer( // 네비게이션메뉴
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text("Drawer Header Part"),
            ),
            ListTile(
              title: Text("Menu 1"),
            )
          ],
          ),
        ),
      body: 
          //const Center(child: Text("HELLO WORLD"),), //part1

          // Container( //테이블 생성하기 part2
          //   alignment: Alignment.topLeft,
          //   // child: Column(
          //   //   children: [
          //   //     Container( 
          //   //       width: 200, 
          //   //       height: 200, 
          //   //       color: Colors.blue,
          //   //       ),
          //   //       Container( 
          //   //       width: 200, 
          //   //       height: 200, 
          //   //       color: Colors.red,
          //   //       ),
          //   //   ],
          //   // ),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center, //세로축 정렬
          //     //crossAxisAlignment: CrossAxisAlignment.center, //가로축 정렬
          //     children: [
          //     Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container( 
          //         width: MediaQuery.of(context).size.width/2, // 현재 디스플레이 크기 구하여, 공백없이 사이즈 맞추기
          //         height: 100, 
          //         color: Colors.blue,
          //         ),
          //         Container( 
          //         width: MediaQuery.of(context).size.width/2, 
          //         height: 100, 
          //         color: Colors.red,
          //         ),
          //     ],
          //   ),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container( 
          //         width: MediaQuery.of(context).size.width/2, 
          //         height: 100, 
          //         color: Colors.purple,
          //         ),
          //         Container( 
          //         width: MediaQuery.of(context).size.width/2, 
          //         height: 100, 
          //         color: Colors.green,
          //         ),
          //     ],
          //   ),
          //   ]),
          //   ), 

        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   height: MediaQuery.of(context).size.height,
        //   color: Colors.pink,
        //   child: Stack( // 위젯 겹치기 part3
        //     children: [
        //       Container(               
        //         width: 100,
        //         height: 100,
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         margin: const EdgeInsets.only(top: 50, left: 25),
        //         color: Colors.red,
        //       ),
        //        Container(
        //         width: 100,
        //         height: 100,
        //         margin: const EdgeInsets.only(top: 75, left: 50),
        //         color: Colors.green,
        //       ),
        //        Container(
        //         width: 100,
        //         height: 100,
        //         margin: const EdgeInsets.only(top: 100, left: 75),
        //         color: Colors.yellow,
        //       )
        //     ],
        //   ),
        // ),
      
      // Center( //part4 GestureDetector
      //   // child: TextButton(
      //   //    onPressed: () => print("Text Btn Clicked"), //button Click 
      //   //    child: const Text("TEXT BTN"),        
      //   //   ),
      //    child: GestureDetector( //GestureDetector used
      //       onTap: () => print("GestureDetector used"),
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.amber,
      //       ),
      //     ),
      // ),

      // ListView( //part5 ListView
      //   scrollDirection: Axis.horizontal, // 가로스크롤
      //   children: [
      //     postContainer(title: "Title 1",colorData: Colors.yellow),
      //     postContainer(title: "Title 2",colorData: Colors.purple),
      //     postContainer(title: "Title 3"),
      //     postContainer(title: "Title 4", colorData: Colors.pink),
      //     postContainer(title: "Title 5",colorData: Colors.blue)
      //   ],
      // ),

      // ListView.builder( //part6 ListView builder 
      //   itemCount: postList.length,
      //   itemBuilder: (BuildContext con, int index){
      //     return postContainer(
      //       title: postList[index]["title"] as String,
      //       colorData: postList[index]["color"] as Color,
      //     );
      //   },
      //   ),

      // GridView( //part7 GridView 사용하기
      //   // scrollDirection: Axis.horizontal, //가로축 스크롤
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 15.0,
      //     mainAxisSpacing: 12.0,
      //     ),
      //   children: [
      //     postContainerGrid(number: "1"),
      //     postContainerGrid(number: "2",colorData: Colors.red),
      //     postContainerGrid(number: "3",colorData: Colors.blue),
      //     postContainerGrid(number: "4",colorData: Colors.green),
      //     postContainerGrid(number: "5"),
      //     postContainerGrid(number: "6",colorData: Colors.red),
      //     postContainerGrid(number: "7",colorData: Colors.blue),
      //     postContainerGrid(number: "8",colorData: Colors.green),
      //     postContainerGrid(number: "9"),
      //     postContainerGrid(number: "10",colorData: Colors.red),
      //     postContainerGrid(number: "11",colorData: Colors.blue),
      //     postContainerGrid(number: "12",colorData: Colors.green),
      //     postContainerGrid(number: "13"),
      //     postContainerGrid(number: "14",colorData: Colors.red),
      //     postContainerGrid(number: "15",colorData: Colors.blue),
      //     postContainerGrid(number: "16",colorData: Colors.green),
      //   ],
      // ),

      // GridView.builder( //part8 GridView builder
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 15.0,
      //     mainAxisSpacing: 12.0
      //     ), 
      //   itemCount: postList2.length,
      //   itemBuilder: (BuildContext con, int index){
      //     return postContainerGrid(
      //       number:  postList2[index]["number"] as String,
      //       colorData: postList2[index]["color"] as Color,
      //     );
      //   }),

      // SingleChildScrollView( //part9 스크롤 구현
      //   child: 
      //     Column( 
      //       children: [
      //         SizedBox( // 화면 3등분 스크롤뷰 구현
      //           height: MediaQuery.of(context).size.height/3,
      //           child: SingleChildScrollView(child: Column(children: [
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.green,
      //             ),
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.red,
      //             ),
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.yellow,
      //             ),
      //           ],
      //           ),
      //           ),
      //         ),
      //         SizedBox( // 화면 3등분 스크롤뷰 구현
      //           height: MediaQuery.of(context).size.height/3,
      //           child: SingleChildScrollView(child: Column(children: [
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.blue,
      //             ),
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.pink,
      //             ),
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.purple,
      //             ),
      //           ],
      //           ),
      //           ),
      //         ),
      //          SizedBox( // 화면 3등분 스크롤뷰 구현
      //           height: MediaQuery.of(context).size.height/3,
      //           child: SingleChildScrollView(child: Column(children: [
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.amber,
      //             ),
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.black,
      //             ),
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 300,
      //               color: Colors.orange,
      //             ),
      //           ],
      //           ),
      //           ),
      //         )
              
      //       ],
      //     ),
      // ),

      // Container(child: Stack( //Part10 Align : 정렬하기
      //   children: [
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.amber,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // ),
          //  Align(
          //   alignment: Alignment.topCenter,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.blue,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // ),
          //  Align(
          //   alignment: Alignment.topRight,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.pink,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // ),
          //    Align(
          //   alignment: Alignment.centerLeft,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.amber,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // ),
          //  Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.blue,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // ),
          //  Align(
          //   alignment: Alignment.centerRight,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.pink,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // ),
          //           Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.amber,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // ),
          //  Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.blue,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // ),
          //  Align(
          //   alignment: Alignment.bottomRight,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.pink,
          //     alignment: Alignment.center, // Container 내부요소를 중앙 정렬
          //     child: Text("Hello"),
          //   ),
          // )

      //   Container( // Ailgn으로 게임화면 구현
      //     width: MediaQuery.of(context).size.width,
      //     height: MediaQuery.of(context).size.height,
      //     color: Colors.black26,
      //   ),
      //    Align( // 바닥
      //       alignment: Alignment.bottomLeft,
      //       child: Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 150,
      //         color: Colors.brown,
      //       ),
      //     ),
      //      Align( // 캐릭터
      //       alignment: Alignment.bottomLeft,
      //       child: Container(
      //         margin: const EdgeInsets.only(left: 40, bottom: 150),
      //         width: 100,
      //         height: 100,
      //         color: Colors.amber,
      //       ),
      //     ),
      //      Align( // 구름
      //       alignment: Alignment.center,
      //       child: Container(
      //         margin: const EdgeInsets.only(bottom: 200),
      //         width: 200,
      //         height: 70,
      //         color: Colors.lightBlue,
      //       ),
      //     ),
      //   ],
      // ),
      // ),

      // Container( //part11 팝업창 띄우기
      //   child: Center(
      //     child: TextButton(
      //       onPressed: (){
      //         showDialog(
      //           context: context, 
      //           builder: (BuildContext con){
      //             return AlertDialog(
      //               title: const Text("Dialog Title"),
      //               content: SingleChildScrollView(
      //                 child: 
      //                   Container(
      //                     child: const Text("Dialog Content"),
      //                   ),
      //               ),
      //               actions: [
      //                 TextButton(onPressed: ()=> Navigator.of(context).pop(), child: const Text("Yes")),
      //                 TextButton(onPressed: ()=> Navigator.of(context).pop(), child: const Text("Close"))
      //               ],
      //             );
      //           }
      //         );
      //       },
      //       child: const Text("Button"),
      //     ),
      //     ),
      // ),

      // Container( //part12 이미지 보여주기
      //   width: MediaQuery.of(context).size.width,
      //   color: Colors.amber,
      //   child: Image(
      //     height: 350,
      //     image: NetworkImage( // 웹 이미지 보여주기
      //       // 'https://i.ytimg.com/vi/kxE8HKKTf_U/maxresdefault.jpg'
      //       // imgUrl,
      //       imageUrl2,
      //     ),
      //   //  fit: BoxFit.fill, // image 가득 채움
      //     fit: BoxFit.fitHeight,
      //   ),
      // ),

      // Container( //part13 반응형으로 만들기 
      //   child: Row(children: [
      //      // Container( // MediaQuery 사용하여, 비율나누기
      //     //   width: MediaQuery.of(context).size.width/2,
      //     //   height: 150,
      //     //   color: Colors.blue,
      //     // ),
      //     //  Container(
      //     //   width: MediaQuery.of(context).size.width/2,
      //     //   height: 150,
      //     //   color: Colors.red,
      //     // )

      //     Flexible( // 반응형 Flexible
      //       flex: 1, //비율 지정
      //       child: Container(
      //         height: 150,
      //         color: Colors.amber,
      //       ),
      //     ),
      //     Flexible(
      //       flex: 2, //비율 지정
      //       child: Container(
      //         height: 150,
      //         color: Colors.pink,
      //       ),
      //     ),
         
      //     Expanded( // 반응형 Expended
      //       flex: 1, //비율 지정
      //       child: Container(
      //         height: 150,
      //         color: Colors.purple,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2, //비율 지정
      //       child: Container(
      //         height: 150,
      //         color: Colors.brown,
      //       ),
      //     ),
      //   ],),
      //   ),

      // Container( //part14 그라데이션 적용하기 
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   // color: Colors.blue,
      //   decoration: BoxDecoration(
      //     gradient: 
      //     // LinearGradient( 
      //     //   colors: [
      //     //     Colors.blue[100] as Color,
      //     //     Colors.blue[300] as Color,
      //     //     Colors.blue[500] as Color,
      //     //   ],
      //     // begin: Alignment.bottomCenter,
      //     // end: Alignment.topCenter,
      //     // stops: const [0.1,0.2,0.7] // 그라데이션 비율
      //     // )
      //      RadialGradient( 
      //       center: Alignment.center,
      //       colors: [
      //         Colors.blue[100] as Color,
      //         Colors.blue[300] as Color,
      //         Colors.blue[500] as Color,
      //       ],
      //     stops: const [0.1,0.2,0.7], // 그라데이션 비율
      //     radius: 1.0 // 반지름 키우기
      //     )
      //   ),
      // ),

      // Container( //part15 버튼 만들기
      //   child: Column(
      //     children: [
      //       Center(
      //         child: ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: Colors.amber,
      //             textStyle: const TextStyle(
      //               fontSize: 20,
      //             )
      //           ),
      //           onPressed: () => {
      //             print("Elevated button")
      //           },
      //           child: Text("Elevated Button"),
      //         ),
      //       ),
      //       Center(
      //         child: TextButton(
      //            onPressed: () => {
      //             print("Text button")
      //           },
      //            child: Text("Text Button"),
      //         ),
      //       ),
      //       Center(
      //         child: OutlinedButton(
      //            onPressed: () => {
      //             print("Outlined button")
      //           },
      //            child: Text("Outlined Button"),
      //         ),
      //       ),
      //   ],
      //   ),
      // ),

      Center( //part16 다른화면으로 이동
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => const SecondView(), // 화면구현 후 임포트 처리 필요 ctrl + .
            )),
            child: Container(child: const Text("Get Started"), padding: const EdgeInsets.all(15), color: Colors.blue, ),
          ),
      ),

      floatingActionButton: FloatingActionButton( // 플로팅버튼
        onPressed: () => print("clicked"),
        child: const Icon(Icons.mouse),
      ),
    );
  }

  Widget postContainer({String title ='', Color colorData = Colors.green}){ //part5,6 ListView Container Widget
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: colorData,
          ),
      ],
    );
  }

  Widget postContainerGrid({String number = "0", Color colorData = Colors.amber}){ //part7,8 GridView Container Widget
    return Container(
            height: 100,
            color: colorData,
            child: Center(
              child: Text("Box $number"),
            ),
          );
  }
}

  //UI에 필요한 빌드부분을 그림.
