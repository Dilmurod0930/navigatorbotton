import 'package:flutter/material.dart';
import 'package:navigatorbottom/models/home_page_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return Material(
                  elevation: 30,
                  child: ExpansionTile(
                    key: PageStorageKey("$index"),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(HomePageImage.image[index]),
                      radius: 24,
                    ),
                    title: Text(
                      HomPageModel.mavzu[index],
                      style: const TextStyle(fontSize: 24),
                    ),
                    subtitle: Text(
                      HomPageModel.fanNomi[index],
                      style: const TextStyle(color: Colors.red),
                    ),
                    children: [
                      Image.network(HomePageImage.image[index],
                          fit: BoxFit.cover),
                      const SizedBox(height: 20),
                      Text(
                        HomPageModel.mavzuHaqida[index],
                        style:
                            const TextStyle(fontSize: 17, color: Colors.teal),
                      )
                    ],
                  ),
                );
              },
              itemCount: HomPageModel.fanNomi.length),
        ),
      ],
    );
  }
}
