import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget {


  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[800],
          title: Text("Budget Tracker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),),
          centerTitle: true,

        ),
        body:
        Container(
          color: Colors.indigo[100],
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 10),
            child: Column(
              children: [

                Expanded(
                  flex:1,
                  child: Container(
                    child: Column(
                      children:[Text("WELCOME ",
                      style: TextStyle(
                        fontSize:50,
                        fontWeight: FontWeight.w900,
                      ),),
                        Text("BACK",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900
                        ),)
                    ]),
                  ),
                ),
                Expanded(
                  flex:3,

                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person,
                          size: 150,
                          color: Colors.indigo[900],
                        ),
                        SizedBox(
                          height: 5,
                          width: 400,
                        ),
                    AppBar(
                      shape:ShapeBorder.lerp(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50)), RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),1),
                      backgroundColor: Colors.white,
                      title: Row(
                        children:[ Text("   Total :",
                        style: TextStyle(color: Colors.black,
                        fontSize: 30,
                        fontWeight:FontWeight.bold),),
                          SizedBox(width: 30,),
                          Text("114375",
                            style: TextStyle(color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ]
                      ),
                      elevation:1.0,
                      actions: [
                        IconButton(onPressed:(){
                          showDialog(context: context, builder:( BuildContext context){
                            return AlertDialog(
                              contentPadding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                              backgroundColor:Colors.white,
                              title: Text("Expenses"),
                              content:Column(
                                children: [
                                  Text("Rent :",
                                  style: TextStyle(color: Colors.black),)
                                ],
                              ) ,
                            );
                          }
                          );
                        },
                            icon:Icon(Icons.arrow_drop_down_sharp,
                        color: Colors.black,
                        size: 30,))
                      ],
                    )

                      ],
                    ),

                  ),
                ),
                Expanded(
                  flex:1,
                  child: Container(

                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton:FloatingActionButton(
          backgroundColor:Colors.indigo[900],
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ) ,
    );
  }
}

