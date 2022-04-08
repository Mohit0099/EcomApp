import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  imageurl  =
        "https://cdn.siasat.com/wp-content/uploads/2021/05/tiger-shroff.jpg";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.blueGrey),
                  accountName: const Text("Mohit Suluja"),
                  accountEmail:const Text("Mohit@gmail.com"),
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                )),
            const Divider  (
              height: 5,
              color: Colors.white,
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.0,
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.0,
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.textformat_abc_dottedunderline,
                color: Colors.black,
              ),
              title: Text(
                "About Us",
                textScaleFactor: 1.0,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading:const  Icon(
                CupertinoIcons.arrow_down_circle,
                color: Colors.black,
              ),
              title: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child:const Text(
                  "LOG OUT",
                  textScaleFactor: 1.0,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
