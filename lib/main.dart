import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color:  Colors.blue),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white
          )
      ),
      home: const Demo1(),
    );
  }
}

class Demo1 extends StatelessWidget {
  const Demo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Icon(Icons.account_circle_rounded),
        title: Text("Cool Company"),
        centerTitle: true,
        actions: [
          Icon(Icons.keyboard_arrow_down),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        children: [
          ExpansionTile(

              title: Text("Team Marketing"),
              children:[
                Text("Branding"),
                Text("Content stuff"),
                Text("Digital"),
                Text("Public regulations"),
                Text("Seo activities"),
                Text("Social media"),
                Text("strategists"),
                Text("Flutter"),
              ]
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.sunny_snowing),
              label: "Today",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sticky_note_2_outlined),
              label: "Coach",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_sharp),
              label: "You",
            ),
          ]),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         leading: Container(
//           margin: EdgeInsets.only(left: 5, bottom: 5),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Icon(Icons.ac_unit),
//         ),
//         title: Text(
//           "Cool Company",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
//         ),
//         actions: [
//           Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white, size: 30),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
//           BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Calender"),
//         ],
//       ),
//     );
//   }
// }
