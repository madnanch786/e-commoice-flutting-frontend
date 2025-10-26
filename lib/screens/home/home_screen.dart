import 'package:e_commoice_flutting_frontend/screens/home/widgets/item_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/images/logo.png'),
        ),
        title: const Text(
          'eShoping',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Badge(
              label: Text('10'),
              child: Icon(CupertinoIcons.bell, size: 28),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      body: ListView(
        children: [
          // Search Box
          Card(
            margin: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          ),

          // Banner
          SizedBox(
            height: 150,
            child: PageView(
              children: [
                ItemBanner(image: 'banner2.png'),
                ItemBanner(image: 'banner1.png'),
                ItemBanner(image: 'banner3.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
