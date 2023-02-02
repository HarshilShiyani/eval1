import 'package:flutter/material.dart';

class Categorys extends StatefulWidget {
  const Categorys({Key? key}) : super(key: key);

  @override
  State<Categorys> createState() => _CategorysState();
}

class _CategorysState extends State<Categorys> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('All Categories'),
          actions: [
            Container(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(Icons.mic_rounded)),
                  ],
                ))
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/home.jpg'),
              radius: 40,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/home.jpg'),
              radius: 40,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/hom1.jpg'),
              radius: 40,
            ),
            CategoryCard(),
            CategoryCard()
          ],
        ),
      ),
    );
  }
}
class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/images/home.jpg'),
      radius: 40,
    );
  }
}

