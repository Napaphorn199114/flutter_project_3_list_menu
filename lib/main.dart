import 'package:flutter/material.dart';

void main() {
  var app = MyApp();
  runApp(MyApp());
}

// สร้าง wedget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; //การสร้าง state

//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    //กลุ่มข้อมูล Text Widget
    // data.add( Text("กดปุ่มเพื่อเพิ่มจำนวนตัวเลข"));
    // data.add( Text(number.toString(),style: TextStyle(fontSize: 60),));

    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนู"),
        ),
        body: ListView.builder( // scoll ไปได้เรื่อยๆ 
            itemCount: 15,  //ระบุจำนวนรายการ ถ้าไม่ระบุมันจะไปได้เรื่อยๆ
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("เมนูที่ ${index+1}"),);
            }));
  }

 /* List<Widget> getData(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        //กำหนดรายละเอียดที่แสดงใน ListView
        title: Text(
          "เมนูที่ ${i + 1}",
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text("หัวข้อย่อยที่ ${i + 1}"),
      );
      //var menu1 =Text(" รายการที่${i + 1}",style: TextStyle(fontSize: 25),);

      data.add(menu);
    }
    return data; //คำนวณเสร็จต้อง return ค่า
  }*/
}
