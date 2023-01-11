import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "This is header",
                style: TextStyle(color: Colors.white),
              ),
            ),
            InkWell(
              child: Ink(
                child: const ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: Text(
                "Share",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.star_rate_rounded,
                color: Colors.black,
              ),
              title: Text(
                "Rate",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer in Flutter"),
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool myVaue = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch.adaptive(
          value: myVaue,
          onChanged: (value) {
            setState(() {
              myVaue = !myVaue;
            });
          }),
    );
  }
}
