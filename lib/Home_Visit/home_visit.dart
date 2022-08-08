// import 'package:flutter/material.dart';
// import 'package:medical_help/Clini_visit/clni_visi.dart';
// class HomeVisitPage extends StatefulWidget {
//   const HomeVisitPage({Key? key}) : super(key: key);
//
//   @override
//   State<HomeVisitPage> createState() => _HomeVisitPageState();
// }
//
// class _HomeVisitPageState extends State<HomeVisitPage> {
//   bool _ISselect=false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Expanded(
//         flex: 2,
//         child: InkWell(
//           onTap: (){
//             setState((){
//               _ISselect=!_ISselect;
//             });
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(11),
//               color: _ISselect==false ? Colors.greenAccent[100] : Colors.amber,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 left: 15,
//               ),
//               child: Column(
//                 mainAxisAlignment:MainAxisAlignment.start,
//                 crossAxisAlignment:CrossAxisAlignment.start ,
//                 children: [
//                   Expanded(
//                     flex:4,
//                     child:Container(
//                       child: CircleAvatar(
//                         backgroundColor: Colors.grey,
//                         child: Icon(Icons.home_filled,size: 25,),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex:2,
//                     child:Column(
//                       crossAxisAlignment:CrossAxisAlignment.start ,
//                       children: [
//                         Text("home Visit",style: TextStyle(
//                           color: Colors.black,
//                         ),),
//                         Text("Make an appoinment",style: TextStyle(
//                           fontSize: 10,
//                           color: Colors.black,
//                         ),),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
