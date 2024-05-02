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

      SingleChildScrollView( //part9 스크롤 구현
        child: 
          Column( 
            children: [
              SizedBox( // 화면 3등분 스크롤뷰 구현
                height: MediaQuery.of(context).size.height/3,
                child: SingleChildScrollView(child: Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.green,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.red,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.yellow,
                  ),
                ],
                ),
                ),
              ),
              SizedBox( // 화면 3등분 스크롤뷰 구현
                height: MediaQuery.of(context).size.height/3,
                child: SingleChildScrollView(child: Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.blue,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.pink,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.purple,
                  ),
                ],
                ),
                ),
              ),
               SizedBox( // 화면 3등분 스크롤뷰 구현
                height: MediaQuery.of(context).size.height/3,
                child: SingleChildScrollView(child: Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.amber,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.black,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.orange,
                  ),
                ],
                ),
                ),
              )
              
            ],
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
