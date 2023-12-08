import 'package:flutter/material.dart';
import 'Home.dart';
main(){
  runApp(Main());

}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: King(),
    );
  }
}


