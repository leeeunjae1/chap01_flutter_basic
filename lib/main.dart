import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App 타이틀',
      // App의 전반적인 테마를 설정한다.
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
          backgroundColor: Colors.blue,
        ),

        body: Container(
          color: Colors.yellow,
          child: Center(
            child: Text("Body입니다."),
          ),
        ),

        // BottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'school',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarm),
          onPressed: () => print("hello"),
        ),
      ),
    );
  }
}
