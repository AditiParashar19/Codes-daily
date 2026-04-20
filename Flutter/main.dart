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
      ),
      home: const MyHomePage(title: 'Flutter Hello Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> arr = ["1", "2", "3", "4", "5"];
    List<String> subtitle =["sub1","sub2","sub3","sub4","sub5"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 140, 215),
        title: Text("Hello This is Demo"),
      ), //leadin -liststyle widget
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading:CircleAvatar(
              backgroundImage: AssetImage("assets/images/i2.jpg"),
              radius: 15,
            ) ,
            title: Text(arr[index]),
            subtitle: Text(subtitle[index]),
            trailing:Icon(Icon.zoom_in_map_rounded)
          )
          return Container(
            height: 100,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(arr[index], style: TextStyle(fontSize: 40)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("title", style: TextStyle(fontSize: 30)),
                    Text("subtitle", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Image.asset("assets/images/i2.jpg"),
              ],
            ),
          );
        },
        itemCount: arr.length,
        separatorBuilder: (context, index) {
          return Divider(height: 10, thickness: 20, color: Colors.white);
        },
      ),
    );
  }
}

//First Build method
//   Widget build(BuildContext context) {
//     List<String> arr = ["1", "2", "3", "4", "5"];

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: const Text("Hello This is Demo"),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return Container(
//             height: 100,
//             color: Colors.blue,
//             alignment: Alignment.center,
//             child: Container(
//               width: 200,
//               child: Text(
//                 arr[index],
//                 style: const TextStyle(fontSize: 40, color: Colors.white),
//               ),
//             ),
//           );
//         },
//         itemCount: arr.length,
//       ),
//     );
//   }
// }

// Widget build(BuildContext context) {
// This method is rerun every time setState is called, for instance as done
// by the _incrementCounter method above.
//
// The Flutter framework has been optimized to make rerunning build methods
// fast, so that you can just rebuild anything that needs updating rather
// than having to individually change instances of widgets.

// List<String> arr = [
//   "hello",
//   "hi",
//   "welcome",
//   "flutter",
//   "dart",
//   "programming",
//   "language",
//   "Python",
//   "C++",
//   "Choose One Option",
// ];

// return Scaffold(
//   appBar: AppBar(
// TRY THIS: Try changing the color here to a specific color (to
// Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// change color while the other colors stay the same.

// backgroundColor: Theme.of(context).colorScheme.inversePrimary,

// Here we take the value from the MyHomePage object that was created by
// the App.build method, and use it to set our appbar title.

// title: Text(widget.title),
// ),

// body:ListView.builder(itemBuilder: (context,index)){
// return Text(arr[index],style:TextStyle(fontSize:40));))
// },

// itemCount:3,
// );

// Text(
//   "Hello",
//   style: TextStyle(
//     color: const Color.fromARGB(255, 155, 89, 255),
//     fontSize: 40,
//     fontWeight: FontWeight.bold,
//   ),
// ),

// body: Column(
// children: [

// Container(
//   height: 100,
//   color: Colors.blue,
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       Container(width:40,height:80,child: Image.asset("assets/images/i2.jpg")),
//       Container(width:40,height:80,child: Image.asset("assets/images/i2.jpg", width: 100, height: 100)),
//     ],
//   ),
// ),

// Container(width:40,height:80,child: Image.asset("assets/images/i2.jpg", width: 100, height: 100)),
// Container(width:40,height:80,child: Image.asset("assets/images/i2.jpg", width: 100, height: 100)),
// ],

// ),

// Center(
//   child: Container(
//     width:100,
//     height: 100,
//     color: Colors.yellowAccent,
//     child: Center(
//       child: Text("Hello!", style: TextStyle(
//         color: const Color.fromARGB(225, 4, 8, 200),
//         fontSize: 20,
//       )),
//     ),
//   ),
// ),

// body: ListView(
//   children: [
//     Text("1", style: TextStyle(fontSize: 100)),
//     Text("2", style: TextStyle(fontSize: 100)),
//     Text("1", style: TextStyle(fontSize: 100)),
//     Text("1", style: TextStyle(fontSize: 100)),
//     Text("2", style: TextStyle(fontSize: 100)),
//     Text("1", style: TextStyle(fontSize: 100)),
//   ],
// ),

// ListView.builder(
// itemBuilder: (context, index) {
//   return Container(
//     height: 100,
//     color: const Color.fromARGB(255, 225, 137, 230),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           arr[index],
//           style: TextStyle(
//             fontSize: 80,
//             color: const Color.fromARGB(255, 195, 13, 128),
//             fontFamily: 'Times New Roman',
//           ),
//         ),
//         Image.asset("assets/images/i2.jpg"),
//       ],
//     ),
//   );
// },
// itemCount: arr.length,
// ),

// body: Column(
//   children: [
//     Container(
//       height: 100,
//       color: const Color.fromARGB(125, 64, 195, 255),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           CircleAvatar(radius: 40, backgroundImage: AssetImage("assets/images/i2.jpg")),
//           CircleAvatar(radius: 40, backgroundImage: AssetImage("assets/images/i2.jpg")),
//           CircleAvatar(radius: 40, backgroundImage: AssetImage("assets/images/i2.jpg")),
//           CircleAvatar(radius: 40, backgroundImage: AssetImage("assets/images/i2.jpg")),
//         ],
//       ),
//     ),
//   ],
// ),
