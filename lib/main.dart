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
          ),),
      body: const Center(child: Text("HELLO WORLD"),
      ),
      floatingActionButton: FloatingActionButton( // 플로팅버튼
        onPressed: () => print("clicked"),
        child: const Icon(Icons.mouse),
      ),
    );
  }
}

  //UI에 필요한 빌드부분을 그림.
