import 'package:flutter/material.dart';
import 'package:medical_help/Datalass/doctor_data_file.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: Doctor_Data_File_Page_List.length,
        itemBuilder: (context, index){
          return Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(33),
            ),
            child: Column(
              children: [
                Expanded(flex:6,child: Container(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    image: DecorationImage(image: AssetImage("${Doctor_Data_File_Page_List[index].doctor_img}"),
                        fit: BoxFit.fill)
                  ),
                )),
SizedBox(
  height: 4,
),
                Expanded(flex:3,child: Container(
                  child: Column(
                    children: [
                      Expanded(flex:1,child: Text("${Doctor_Data_File_Page_List[index].doctor_name}")),
                      Expanded(flex:1,child: Text("${Doctor_Data_File_Page_List[index].doctor_specilaist}")),
                      Expanded(flex:1,child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.star,size: 16,color: Colors.red,),

                          Text("${Doctor_Data_File_Page_List[index].doctor_reating}")
                        ],
                      ))
                    ],
                  ),
                ))
              ],
            ),
            //   child: Text("Df"),
          );
        },
      ),
    );
  }
}
