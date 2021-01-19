import 'package:flutter/material.dart';
import 'package:flutter_ui/profiles/profile3/profile3.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Profiles",
      home: profil3(),
    );
  }
}
