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
        appBarTheme: AppBarTheme(color: Colors.indigoAccent),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
      ),
      home: Demo1(),
    );
  }
}

class Demo1 extends StatefulWidget {
  Demo1({super.key});

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  final TextStyle greyMedium = TextStyle(
    color: Colors.grey.shade600,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  final TextStyle greyBold = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  List<Widget> channels = [];

  // we will pompt user to enter channel name
  // on click on channel we will navigate to other screen with some data - image[image address]
  // scrollable channels

  // firebase
  // animation
  // final project

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10, bottom: 10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.account_circle_rounded),
        ),
        title: Text(
          "Cool Company",
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Icon(Icons.keyboard_arrow_down, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              leading: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.black,
              ),
              title: Text("Team Marketing", style: greyBold),
              trailing: null,
              showTrailingIcon: false,
              expandedAlignment: Alignment.centerLeft,
              tilePadding: EdgeInsets.only(left: 20, bottom: 10),
              childrenPadding: EdgeInsets.only(left: 50, bottom: 10, top: 10),
              shape: RoundedRectangleBorder(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text("Branding", style: greyMedium),
                    Text("Content stuff", style: greyMedium),
                    Text("Digital", style: greyMedium),
                    Text("Public regulations", style: greyMedium),
                    Text("Seo activities", style: greyMedium),
                    Text("Social media", style: greyMedium),
                    Text("strategists", style: greyMedium),
                    Text("Flutter", style: greyMedium),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("Unread", style: greyBold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: rowTile("Peter", 2),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: rowTile("Peter", 2),
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("Channels", style: greyBold),
            ),
            SizedBox(height: 10),
            ...channels,
            SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                channels.add(
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(2, 4)
                        )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text("1", style: greyMedium.copyWith(color: Colors.black, fontSize: 10)))),
                        Text("Channel Name", style: greyMedium),
                      ],
                    ),
                  )
                );
                setState(()=>channels);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("+ Add channels", style: greyMedium),
              ),
            ),
          ],
        ),
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
        ],
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(2, 4)
            )
          ]
        ),
        child: Icon(Icons.edit, color: Colors.white,),
      ),
    );
  }

  // obj -> 10 -> 1 and 9 same
  Widget rowTile(String name, int number) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network(
            "https://t4.ftcdn.net/jpg/02/44/43/69/360_F_244436923_vkMe10KKKiw5bjhZeRDT05moxWcPpdmb.jpg",
            height: 50,
            width: 50,
          ),
        ),
        Text(name, style: greyMedium.copyWith(fontSize: 16)),
        Spacer(),
        Container(
          width: 40,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              number.toString(),
              style: greyMedium.copyWith(
                color: Colors.indigoAccent,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
