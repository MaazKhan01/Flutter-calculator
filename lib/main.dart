import 'package:flutter/material.dart';
import 'package:flutter_demo/home_screen.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Routing Practice",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomeScreen(),
    );
  }
}

// class _MyAppState extends State<MyApp> {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
// title: "Routing",
//       theme: ThemeData(),
//     );
//   }
// }


// Practice input field

// image: DecorationImage(
//   fit: BoxFit.cover,
//   image: NetworkImage(
//       'https://images.pexels.com/photos/14690432/pexels-photo-14690432.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
// ),
// child: Padding(
// padding: EdgeInsets.all(10),
// child:  TextFormField(
// decoration: const InputDecoration(
// prefixIcon:Icon(Icons.email) ,
// hintText: "Type Email Here:",
// labelText: "Email",
// counterText: "check",
// hintStyle: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold),
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.green,width: 5),
// ),
// focusedBorder: OutlineInputBorder(),
// ),
// onChanged: (val) {val.characters=="hello"? print('yes'):print('no');},
// keyboardType: TextInputType.emailAddress,
// ),
// )


//LOTTERY APP
// class _MyAppState extends State<MyApp> {
//   Random rand = Random();
//   int x = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Lottery App'),
//           ),
//           body: SafeArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Center(child: Text('Lottery Number is 5',),),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Container(
//                   height: 250,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.withOpacity(.3),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   padding: const EdgeInsets.all(16),
//                   child: x == 5
//                       ? Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             const Icon(
//                               Icons.done_all,
//                               color: Colors.green,
//                               size: 35,
//                             ),
//                             const SizedBox(
//                               height: 15,
//                             ),
//                             Text(
//                                 'Lottery Number is $x, Hurray! You Won Lottery',
//                                 textAlign: TextAlign.center),
//                           ],
//                         )
//                       : Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             const Icon(
//                               Icons.error,
//                               color: Colors.red,
//                               size: 35,
//                             ),
//                             const SizedBox(
//                               height: 15,
//                             ),
//                             Text('Your Number Is $x, Better Luck\n Next Time',
//                                 textAlign: TextAlign.center),
//                           ],
//                         ),
//                 )
//               ],
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               x = rand.nextInt(10);
//               setState(() {});
//             },
//             child: const Icon(Icons.refresh),
//           )),
//     );
//   }
// }
