import 'package:flutter/material.dart';

class SHopPage extends StatefulWidget {
  const SHopPage({Key? key}) : super(key: key);

  @override
  _SHopPageState createState() => _SHopPageState();
}

class _SHopPageState extends State<SHopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text(
            "Shop",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55),
          ),
        ),
      ),
    );
  }
}
