import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test3_project/List.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Photo Studio"),
      ),
        drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              currentAccountPicture: Container(
                width: 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/dipon.jpg"),
                  ),
                ),
              ),
              accountName: Text("Dipon Deb"),
              accountEmail:Text("debdipon37@gmail.com") ,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Privacy"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Image.network(itemList[index]['image'].toString(),),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name : ${itemList[index]['name'].toString()}",style: TextStyle(fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Place : ${itemList[index]['place'].toString()}",style: TextStyle(fontSize: 10),),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
        ),
      ),
    );
  }
}
