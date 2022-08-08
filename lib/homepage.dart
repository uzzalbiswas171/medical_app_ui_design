import 'package:flutter/material.dart';

import 'Clini_visit/clni_visi.dart';
import 'Home_Visit/home_visit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _ISselect=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                          child: Row(
                            children: [
                              Text("Medical Care",style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Icons.waving_hand_rounded,size: 25,color: Colors.amber,)
                            ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment:Alignment.centerRight ,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundImage: AssetImage("profile/u3.jpg"),
                            backgroundColor: Colors.lightGreenAccent,
                          ),
                       ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 5,
                child: Container(
                //  color: Colors.lightGreenAccent,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(11),
                  ),
                  child:Row(                //visit page
                    children: [
                      Container(
                        child: Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: (){
                              setState((){
                                _ISselect=!_ISselect;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: _ISselect==false?Colors.indigo[400] :Colors.greenAccent[100],

                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.start,
                                  crossAxisAlignment:CrossAxisAlignment.start ,
                                  children: [
                                    Expanded(
                                      flex:4,
                                      child:Container(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(Icons.add,size: 25,),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex:2,
                                      child:Column(
                                        crossAxisAlignment:CrossAxisAlignment.start ,
                                        children: [
                                          Text("Clinic Visit",style: TextStyle(
                                            color: Colors.white,
                                          ),),
                                          Text("Make an appoinment",style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                  Container(
                  child: Expanded(
                  flex: 2,
                  child: InkWell(
                  onTap: (){
                  setState((){
                  _ISselect=!_ISselect;
                  });
                  },
                  child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: _ISselect==false ? Colors.greenAccent[100] :  Colors.indigo[400],
                  ),
                  child: Padding(
                  padding: const EdgeInsets.only(
                  left: 15,
                  ),
                  child: Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                  Expanded(
                  flex:4,
                  child:Container(
                  child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.home_filled,size: 25,),
                  ),
                  ),
                  ),
                  Expanded(
                  flex:2,
                  child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                  Text("home Visit",style: TextStyle(
                  color: Colors.black,
                  ),),
                  Text("Make an appoinment",style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  ),),
                  ],
                  ),
                  ),
                  ],
                  ),
                  ),
                  ),
                  ),
                  ),
                  ),

                    ],
                  ) ,                  //visit page end
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Text("What are your symptoms?",style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    top: 5,
                    bottom: 5,
                  ),
               //   color: Colors.green,
                    child:ListView.builder(
                      scrollDirection: Axis.horizontal,
                         itemCount: 5,
                       itemBuilder: (context, index){
                           return Padding(
                             padding: EdgeInsets.only(
                               left: 20,
                               top: 10,
                               bottom: 10,
                             ),
                             child: Container(
                               padding: EdgeInsets.only(
                                 left: 5,
                               ),
                               width: 120,
                               decoration: BoxDecoration(
                                   color: Colors.greenAccent[100],
                                 borderRadius: BorderRadius.circular(11)
                               ),
                               child: Row(children: [
                                 Expanded(
                                   flex:2,
                                     child: Icon(Icons.account_circle_outlined,
                                       color: Colors.amber,
                                     ),
                                 ),
                                 SizedBox(
                                   width: 5,
                                 ),
                                 Expanded(
                                   flex: 7,
                                     child: Text("Somthing"),
                                 )
                               ]),
                             ),
                           );
                       }
                  ),
                ),
              ),
            ),    Container(
              child: Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                 // color: Colors.amber,
                  alignment: Alignment.centerLeft,
                  child: Text("Popular Doctors",style: TextStyle(
                    fontSize:19,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),),
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 8,
                child: DoctorPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
