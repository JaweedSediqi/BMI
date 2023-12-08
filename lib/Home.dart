import 'package:flutter/material.dart';
import 'package:food/Result_page.dart';
import 'calculate_brain.dart';

enum Gender { male, fmale }

class King extends StatefulWidget {
  King({super.key});
  @override
  State<King> createState() => _KingState();
}

class _KingState extends State<King> {
  var selected;

  var hieght = 160;
  var wieght = 60;
  var age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = Gender.male;
                  });
                },
                child: New_containner(
                  color: selected == Gender.male ? Colors.grey : Colors.white10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "male",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = Gender.fmale;
                  });
                },
                child: New_containner(
                  color:
                      selected == Gender.fmale ? Colors.grey : Colors.white10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        size: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Fmale",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          )),
          Expanded(
              child: New_containner(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hight"),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "$hieght",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                  ),
                  Text("cm"),
                ],
              ),
              Slider(
                min: 120,
                max: 220,
                activeColor: Colors.pink,
                value: hieght.toDouble(),
                onChanged: (value) {
                  setState(() {
                    hieght = value.round();
                  });
                },
              )
            ],
          ))),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: New_containner(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Wieght",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "$wieght",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.grey,
                          onPressed: () {
                            setState(() {
                              wieght++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.grey,
                          onPressed: () {
                            setState(() {
                              wieght--;
                            });
                          },
                          child: Icon(
                            Icons.exposure_minus_1,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: New_containner(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "$age",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.grey,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.grey,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          child: Icon(
                            Icons.exposure_neg_1,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          GestureDetector(
            onTap: () {
              Calculae_brain calc =
                  new Calculae_brain(hieght: hieght, wieght: wieght);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMI(
                    bmi: calc.calculateBMI(),
                    interpretation: calc.getinformation(),
                    result: calc.getResult(),
                    ),
                  ));

              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => BMI(bmi_res:calc.calculateBMI() ,information:calc.getinformation() ,res_text: calc.getResult(),
              //
              //       ),
              //     ));
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
              color: Colors.pinkAccent,
              width: double.infinity,
              height: 80,
              child: Center(
                  child: Text(
                "Calculate",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              )),
            ),
          )
        ],
      ),
    );
  }
}

class New_containner extends StatelessWidget {
  var color;
  var child;

  New_containner({this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color ?? Colors.white10,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
