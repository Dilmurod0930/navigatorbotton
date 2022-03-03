import 'package:flutter/material.dart';
import 'package:navigatorbottom/views/screens/add.dart';
import 'package:navigatorbottom/views/screens/home_page.dart';
import 'package:navigatorbottom/views/screens/person.dart';
import 'package:navigatorbottom/views/screens/search.dart';
import 'package:navigatorbottom/views/screens/shop.dart';


class NavBottonPage extends StatefulWidget {
  const NavBottonPage({Key? key}) : super(key: key);

  @override
  _NavBottonPageState createState() => _NavBottonPageState();
}

class _NavBottonPageState extends State<NavBottonPage> {
  int _corantIndex = 0;

  List<Widget>? _pages;
   final  keyHomePage = const PageStorageKey("home_value");
   final  keyShopPage = const PageStorageKey("home_value");


  @override
  void initState() {
    super.initState();
    _pages =  [
      HomePage( key:  keyHomePage,),
      SHopPage(key:  keyShopPage,),
     const AddPage(),
     const SearchPage(),
     const PErsonPage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_corantIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors
                .grey, //! battom navni rangi uchun shifting qilib qo'ysa rangi o'zgaradi
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
            ),
            label: 'Shop',
            backgroundColor: Colors
                .green, //! battom navni rangi uchun shifting qilib qo'ysa rangi o'zgaradi
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Add',
            backgroundColor: Colors
                .yellow, //! battom navni rangi uchun shifting qilib qo'ysa rangi o'zgaradi
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
            backgroundColor: Colors
                .blue, //! battom navni rangi uchun shifting qilib qo'ysa rangi o'zgaradi
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Person',
            backgroundColor: Colors
                .teal, //! battom navni rangi uchun shifting qilib qo'ysa rangi o'zgaradi
          )
        ],
        type: BottomNavigationBarType.shifting,
        // type: BottomNavigationBarType.fixed,

        currentIndex: _corantIndex,
        onTap: (index) {
          setState(() {
            _corantIndex = index;
          });
        },
      ),
    
    //Kamentariyaga olingan 
      // //!AppBar
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text(
      //     'AppBar',
      //     style: TextStyle(fontSize: 33),
      //   ),
      // ),
      // //! Drawer!
      // drawer: Drawer(
      //   child: Container(
      //     child: Column(
      //       children: [
      //         Expanded(
      //           flex: 2,
      //           child: Container(
      //             color: Colors.teal,
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Row(
      //                   children: [
      //                     const CircleAvatar(
      //                       radius: 33.0,
      //                       backgroundImage: NetworkImage(
      //                           'https://source.unsplash.com/random/2'),
      //                     ),
      //                     const SizedBox(
      //                       width: 20,
      //                     ),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: const [
      //                         Text(
      //                           "Ismi ",
      //                           style: TextStyle(
      //                               fontSize: 23, color: Colors.white),
      //                         ),
      //                         Text(
      //                           "Familyasi  ",
      //                           style: TextStyle(
      //                               fontSize: 23, color: Colors.white),
      //                         ),
      //                       ],
      //                     )
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //         //? ikkinchi expended Drawerni ichida
      //         Expanded(
      //           flex: 7,
      //           child: Container(
      //             color: Colors.red,
      //             child: ListView.builder(
      //               itemBuilder: (context, index) {
      //                 return Container(
      //                   color: Colors.red,
      //                   child: Card(
      //                     child: ListTile(
      //                       leading: CircleAvatar(
      //                         backgroundImage: NetworkImage(
      //                             'https://source.unsplash.com/random/${index + 3}'),radius: 33.0,
      //                       ),
      //                       title: Text('Ismi ${index + 1}'),
      //                       subtitle: Text('Familyasi ${index + 1}'),
      //                     ),
      //                   ),
      //                 );
      //               },
      //               itemCount: 12,
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
