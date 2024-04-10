import 'package:flutter/material.dart';
import 'package:new_app/Compo/Card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 7,
        title: const Row(
          children: [
            Icon(Icons.location_pin),
            SizedBox(width: 2),
            Text(
              'G.T.ROAD,KOLKATA',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.blue,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 7.0),
            child: Icon(Icons.notifications, color: Colors.blue),
          )
      
      ]),
      body: SizedBox(
        height: 30,
        child: ListView(
          children: [
            SizedBox(
              height: 200, 
              child: NewsApp(),
            ),
          ],
        ),
      ),
    );
  }
}
