import 'package:flutter/material.dart';

class PErsonPage extends StatefulWidget {
  const PErsonPage({Key? key}) : super(key: key);

  @override
  _PErsonPageState createState() => _PErsonPageState();
}

class _PErsonPageState extends State<PErsonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child:const Center(
          child: Text(
            "PErson",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 55),
          ),
        ),
      ),
    );
  }
}
