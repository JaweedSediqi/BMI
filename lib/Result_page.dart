import 'package:flutter/material.dart';
import 'package:food/Home.dart';


class BMI extends StatelessWidget {
   BMI({super.key,required this.result,required this.bmi,required this.interpretation});
           final String result;
           final String bmi;
           final String interpretation;
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
             appBar: AppBar(
               title: Text("RES"),
             ),
             body: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 Expanded(
                     child: Text(
                   "Your result",
                   style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                 )),
                 Expanded(
                     flex: 5,
                     child: New_containner(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text(
                             result.toUpperCase(),
                             style: TextStyle(
                                 fontSize: 40,
                                 fontWeight: FontWeight.w900,
                                 color: Colors.green),
                           ),
                           Text(
                             bmi,
                             style: TextStyle(
                                 fontSize: 80,
                                 fontWeight: FontWeight.w900,
                                 color: Colors.white),
                           ),
                           Column(
                             children: [
                               Text(interpretation,style: TextStyle(fontSize: 25),),
                               SizedBox(height: 20,),
                               Text("18.5-25.5 kg/m2"),
                             ],
                           ),
                           Text("you have normal body wieght good job")
                         ],
                       ),
                     )),
                 GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => King(),));
                   },
                   child: Container(
                     margin: EdgeInsets.only(top: 15),
                     color: Colors.pinkAccent,
                     width: double.infinity,
                     height: 80,
                     child: Center(
                         child: Text(
                           "Re Calculate",
                           style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                         )),
                   ),
                 )
               ],
             )

       );



  }
}

 //
 //       class BMI extends StatelessWidget {
 //         BMI({Key? key, required this.result, required this.bmi, required this.interpretation}) : super(key: key);
 //
 //         final String result;
 //         final String bmi;
 //         final String interpretation;
 //
 //         @override
 //         Widget build(BuildContext context) {
 //           return
 // Scaffold(
 //          appBar: AppBar(
 //            title: Text("RES"),
 //          ),
 //          body: Column(
 //            crossAxisAlignment: CrossAxisAlignment.stretch,
 //            children: [
 //              Expanded(
 //                  child: Text(
 //                "Your result",
 //                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
 //              )),
 //              Expanded(
 //                  flex: 5,
 //                  child: New_containner(
 //                    child: Column(
 //                      crossAxisAlignment: CrossAxisAlignment.center,
 //                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 //                      children: [
 //                        Text("",
 //                        // res_text.toUpperCase(),
 //                          style: TextStyle(
 //                              fontSize: 40,
 //                              fontWeight: FontWeight.w900,
 //                              color: Colors.green),
 //                        ),
 //                        Text("jjjj",
 //                          // bmi_res,
 //                          style: TextStyle(
 //                              fontSize: 80,
 //                              fontWeight: FontWeight.w900,
 //                              color: Colors.white),
 //                        ),
 //                        Column(
 //                          children: [
 //                            // Text(information),
 //                            Text("18.5-25.5 kg/m2"),
 //                          ],
 //                        ),
 //                        Text("you have normal body wieght good job")
 //                      ],
 //                    ),
 //                  )),
 //              GestureDetector(
 //                onTap: () {
 //                  Navigator.push(context, MaterialPageRoute(builder: (context) => King(),));
 //                },
 //                child: Container(
 //                  margin: EdgeInsets.only(top: 15),
 //                  color: Colors.pinkAccent,
 //                  width: double.infinity,
 //                  height: 80,
 //                  child: Center(
 //                      child: Text(
 //                        "Re Calculate",
 //                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
 //                      )),
 //                ),
 //              )
 //            ],
 //          )
 //
 //    );
 //  }
 //       }
 //
