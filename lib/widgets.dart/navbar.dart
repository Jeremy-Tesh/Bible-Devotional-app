import 'package:flutter/material.dart';
import 'package:yehiwot_kal/widgets.dart/custom_text.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent.withOpacity(0.92),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: CustomText(text: "Ermias Teshome"),
            accountEmail: CustomText(
              text: "jermitesh20@gmail.com",
              size: 14,
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Container(
                  color: Colors.black,
                  child: Image(
                    image: AssetImage("assets/profile.png"),
                  ),
                ),
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/sidebar.jpeg"),
                    fit: BoxFit.fitWidth)),
          ),
          ListTile(
            leading: const Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            title: CustomText(
              text: 'Bookmarks',
              size: 14,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            title: CustomText(
              text: 'Bookmarks',
              size: 14,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: CustomText(
              text: 'Logout',
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
