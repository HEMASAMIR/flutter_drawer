import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Drawer"),
        backgroundColor: Colors.green[700],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                        "assets/profile.jpg",
                      ))),
                ),
              ),
              accountName: Text("Hema Samir",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              accountEmail: Text(
                "hema@gmail.com",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
                title: Text("Favourite"),
                leading: Icon(Icons.favorite),
                onTap: () {}),
            ListTile(
                title: Text("WorkFlow"),
                leading: Icon(Icons.workspaces_filled),
                onTap: () {}),
            ListTile(
                title: Text("Updates"),
                leading: Icon(Icons.update),
                onTap: () {}),
            Divider(
              color: Colors.grey[600],
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
                title: Text("Notifications"),
                leading: Icon(Icons.notifications),
                onTap: () {}),
            ListTile(
                title: Text("Plugins"),
                leading: Icon(Icons.place),
                onTap: () {}),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            "HomePage",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
