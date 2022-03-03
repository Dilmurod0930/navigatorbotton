import 'package:flutter/material.dart';

class MyShopPage extends StatefulWidget {
  const MyShopPage({Key? key}) : super(key: key);

  @override
  State<MyShopPage> createState() => _MyShopPageState();
}

class _MyShopPageState extends State<MyShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A1E),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.grey,size: 33,
                  ),
                  Text('Home', style: TextStyle(fontSize: 22, color: Colors.grey),)
                ],
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:const DecorationImage(
                        image: NetworkImage(
                            'https://source.unsplash.com/random/1'),
                        fit: BoxFit.cover), ),
              )
            ],
          ),
       
       
       
        ],
      ),
    );
  }
}
