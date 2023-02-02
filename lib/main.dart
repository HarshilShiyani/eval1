import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:p1/cart.dart';
import 'package:p1/category.dart';
import 'package:p1/slider_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomeDefaultScreen(),
    );
  }
}

class HomeDefaultScreen extends StatefulWidget {
  const HomeDefaultScreen({super.key});

  @override
  State<HomeDefaultScreen> createState() => _HomeDefaultScreenState();
}

class _HomeDefaultScreenState extends State<HomeDefaultScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelCome'),
      ),

      body: Categorys(),
      //SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       if (_selectedIndex == 0)
      //       // you can call custom widget here
      //         Text("0")
      //       else if (_selectedIndex == 1)
      //         Column(
      //           children: const [
      //             Text("1"),
      //           ],
      //         )
      //       else if (_selectedIndex == 2)
      //           Column(
      //             children: const [
      //               Text("2"),
      //             ],
      //           )
      //         else if (_selectedIndex == 3)
      //             Column(
      //               children: const [
      //                 Text("3"),
      //               ],
      //             )
      //           else
      //             Column(
      //               children: const [
      //                 Cart()
      //               ],
      //             ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
            ),
            label: 'Categery',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              child: Icon(
                Icons.account_box_outlined,
              ),
            ),
            label: 'Intrest',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_checkout_outlined,
            ),
            label: 'Cart',
          ),
        ],
        showSelectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
