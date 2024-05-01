import 'package:flutter/material.dart';

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

      ListView( //part5 ListView
        scrollDirection: Axis.horizontal, // 가로스크롤
        children: [
          postContainer(title: "Title 1",colorData: Colors.yellow),
          postContainer(title: "Title 2",colorData: Colors.purple),
          postContainer(title: "Title 3"),
          postContainer(title: "Title 4", colorData: Colors.pink),
          postContainer(title: "Title 5",colorData: Colors.blue)
        ],
      ),

      floatingActionButton: FloatingActionButton( // 플로팅버튼
        onPressed: () => print("clicked"),
        child: const Icon(Icons.mouse),
      ),
    );
  }

  Widget postContainer({String title ='', Color colorData = Colors.green}){ //part5 ListView Container Widget
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
}

  //UI에 필요한 빌드부분을 그림.
