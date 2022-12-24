import 'package:flutter/material.dart';
import 'package:flutter_demo/components/my_btns.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [ 
                  Expanded(

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(children: [
                     Align(
                         alignment: Alignment.bottomRight,
                         child:
                          Text(userInput.toString(),style: TextStyle(color: Colors.white,fontSize: 40),)),
                          SizedBox(height: 15,),
                      Text(answer.toString(),style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),)

                      ],),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(children: [
                          MyBtn(
                            title: 'AC',
                            onPress: () {
                              userInput = '';
                              answer = '';
                              setState(() {});
                              print('AC');
                            },
                          ),
                          MyBtn(
                            title: '+/-',
                            onPress: () {
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '%',
                            onPress: () {
                              userInput += '%';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '/',
                            color: Colors.grey,
                            onPress: () {
                              userInput += '/';
                              setState(() {});
                              print('tap');
                            },
                          ),
                        ]),
                        Row(children: [
                          MyBtn(
                            title: '7',
                            onPress: () {
                              userInput += '7';
                              setState(() {});
                            },
                          ),
                          MyBtn(
                            title: '8',
                            onPress: () {
                              userInput += '8';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '9',
                            onPress: () {
                              userInput += '9';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: 'X',
                            color: Colors.grey,
                            onPress: () {
                              userInput += '*';
                              setState(() {});
                              print('tap');
                            },
                          ),
                        ]),
                        Row(children: [
                          MyBtn(
                            title: '4',
                            onPress: () {
                              userInput += '4';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '5',
                            onPress: () {
                              userInput += '5';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '6',
                            onPress: () {
                              userInput += '6';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '-',
                            color: Colors.grey,
                            onPress: () {
                              userInput += '-';
                              setState(() {});
                              print('tap');
                            },
                          ),
                        ]),
                        Row(children: [
                          MyBtn(
                            title: '1',
                            onPress: () {
                              userInput += '1';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '2',
                            onPress: () {
                              userInput += '2';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '3',
                            onPress: () {
                              userInput += '3';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '+',
                            color: Colors.grey,
                            onPress: () {
                              userInput += '+';
                              setState(() {});
                              print('tap');
                            },
                          ),
                        ]),
                        Row(children: [
                          MyBtn(
                            title: '0',
                            onPress: () {
                              userInput += '0';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '.',
                            onPress: () {
                              userInput += '.';
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: 'DEL',
                            onPress: () {
                              userInput = userInput.substring(0,userInput.length - 1);
                              setState(() {});
                              print('tap');
                            },
                          ),
                          MyBtn(
                            title: '=',
                            color: Colors.grey,
                            onPress: () {
                              equalPressed();
                              setState(() {});
                              print('tap');
                            },
                          ),
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,)
                ],
              ))),
    );
  }

  void equalPressed() {
    Parser p = Parser();
    // userInput = userInput;
    Expression exp = p.parse(userInput);
    ContextModel cntxtMdl = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, cntxtMdl);
    // answer = eval.toString();

    var ans = eval.toString();
    // print(ans.characters.last == '0'? ' ': 'wait');
    var sol = ans.characters.last == '0'? ans.replaceAll('.0', ' '): ans;
    answer = sol;

    // if(answer.characters == '0') {
    //   print("done");
     //   answer.substring(0, answer.length - 1);
     // answer.replaceAll('.0', ' ');
    // }
    // answer.replaceAll('.0', ' ');

  }
}

// body: TabBarView(
// children: [
// ListView.builder(
// itemCount: 5,
// itemBuilder: (context, index) {
// return const ListTile(
// leading: CircleAvatar(
// backgroundImage: NetworkImage(
// 'https://images.pexels.com/photos/14690432/pexels-photo-14690432.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=loadl')),
// title: Text("Maaz Khan"),
// subtitle: Text("hello world testing app!"),
// trailing: Text('12-12 AM'),
// );
// })
// ],
// )
