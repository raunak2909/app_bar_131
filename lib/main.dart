import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> listPopupMenuItems = [
    {'icon': Icons.settings, 'title': 'Settings'},
    {'icon': Icons.info_outline, 'title': 'About Us'},
    {'icon': Icons.call, 'title': 'Contact Us'},
    {'icon': Icons.account_circle, 'title': 'My Profile'},
    {'icon': Icons.logout, 'title': 'Sign Out'},
  ];

  String mInitialValue = "Settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 200,
            flexibleSpace: Container(
              color: Colors.blue,
            ),
            title: Text('Home'),
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.nightlight),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(21)),
              /*side: BorderSide(
            width: 11,
            color: Colors.black.withOpacity(0.5),
            strokeAlign: BorderSide.strokeAlignCenter
          )*/
            ),
            elevation: 11,
            shadowColor: Colors.blueGrey,
            bottom: PreferredSize(
                child: Container(), preferredSize: Size(double.infinity, 100)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              PopupMenuButton(
                  initialValue: mInitialValue,
                  shadowColor: Colors.yellow,
                  elevation: 11,
                  onSelected: (value) {
                    mInitialValue = value.toString();
                    setState(() {});
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21)),
                  itemBuilder: (_) {
                    return listPopupMenuItems
                        .map((eachData) => PopupMenuItem(
                            value: eachData['title'],
                            onTap: () {},
                            child: Row(
                              children: [
                                Icon(
                                  eachData['icon'],
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(eachData['title']),
                              ],
                            )))
                        .toList();
                  })
            ],
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                    title: Text('Hello'),
                  )))
        ],
      ),
    );
  }
}

//AppBar(
//         title: Text('Home'),
//         backgroundColor: Colors.blueGrey,
//         foregroundColor: Colors.white,
//         leading: IconButton(
//           icon: Icon(Icons.nightlight),
//           onPressed: () {},
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(bottom: Radius.circular(21)),
//           /*side: BorderSide(
//             width: 11,
//             color: Colors.black.withOpacity(0.5),
//             strokeAlign: BorderSide.strokeAlignCenter
//           )*/
//         ),
//         elevation: 11,
//         shadowColor: Colors.blueGrey,
//         bottom: PreferredSize(
//             child: Container(), preferredSize: Size(double.infinity, 100)),
//         actions: [
//           IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_sharp)),
//           IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
//           IconButton(onPressed: (){}, icon: Icon(Icons.add)),
//           PopupMenuButton(
//             initialValue: mInitialValue,
//               shadowColor: Colors.yellow,
//               elevation: 11,
//               onSelected: (value){
//               mInitialValue = value.toString();
//               setState((){});
//               },
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(21)
//               ),
//               itemBuilder: (_){
//             return listPopupMenuItems.map((eachData) =>
//                 PopupMenuItem(
//                   value: eachData['title'],
//                 onTap: (){
//
//                 },
//                 child: Row(
//                   children: [
//                     Icon(eachData['icon'], color: Colors.blueGrey,),
//                     SizedBox(width: 11,),
//                     Text(eachData['title']),
//                   ],
//                 ))).toList();
//           })
//         ],
//       )
