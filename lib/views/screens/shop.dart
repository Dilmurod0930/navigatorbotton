import 'package:flutter/material.dart';
import 'package:navigatorbottom/main.dart';
import 'package:navigatorbottom/views/pages/shopmanyu_page.dart';


class SHopPage extends StatefulWidget {
  const SHopPage({Key? key}) : super(key: key);

  @override
  _SHopPageState createState() => _SHopPageState();
}

class _SHopPageState extends State<SHopPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        MyShopPage()
        
      ],
    );

  }
}
