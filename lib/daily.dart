import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yehiwot_kal/widgets.dart/custom_text.dart';
import 'package:yehiwot_kal/widgets.dart/navbar.dart';

class Daily extends StatelessWidget {
  Daily({Key? key}) : super(key: key);
  PageController pageController = PageController(viewportFraction: 0.85);
  PageController page = PageController();
  List<SideMenuItem> items = [
    SideMenuItem(
      // Priority of item to show on SideMenu, lower value is displayed at the top
      priority: 0,
      title: 'Dashboard',
      onTap: () {},
      icon: Icon(
        Icons.home,
        color: Colors.white,
      ),
      badgeContent: Text(
        '3',
        style: TextStyle(color: Colors.white),
      ),
    ),
    SideMenuItem(
      priority: 1,
      title: 'Settings',
      onTap: () {},
      icon: Icon(Icons.settings),
    ),
    SideMenuItem(
      priority: 2,
      title: 'Exit',
      onTap: () {},
      icon: Icon(Icons.exit_to_app),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: NavBar()

          // SideMenu(
          //   // Page controller to manage a PageView
          //   controller: page,
          //   // Will shows on top of all items, it can be a logo or a Title text
          //   title: Icon(Icons.menu),
          //   // Will show on bottom of SideMenu when displayMode was SideMenuDisplayMode.open
          //   footer: Text('demo'),
          //   // Notify when display mode changed
          //   onDisplayModeChanged: (mode) {
          //     print(mode);
          //   },
          //   // List of SideMenuItem to show them on SideMenu
          //   items: items,
          // ),
          ),
      appBar: AppBar(
        actions: [
          Icon(Icons.settings),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    controller: pageController,
                    itemCount: 1,
                    itemBuilder: ((context, index) => Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/b1.jpeg"),
                                  fit: BoxFit.fitWidth)),
                        ))),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 400,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => weekDevotion()),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile weekDevotion() {
    return ListTile(
      leading: Image(image: AssetImage("assets/a1.jpeg")),
      title: CustomText(text: "week1"),
      subtitle: CustomText(
        text: "mon-fri",
        size: 12,
      ),
      hoverColor: Colors.blueGrey,
      focusColor: Colors.grey,
      isThreeLine: true,
    );
  }
}
