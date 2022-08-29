import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:yehiwot_kal/detail_description.dart';
import 'package:yehiwot_kal/models/Detail.dart';
import 'package:yehiwot_kal/provider/details.dart';
import 'package:yehiwot_kal/widgets.dart/custom_text.dart';
import 'package:yehiwot_kal/widgets.dart/navbar.dart';

class Daily extends StatelessWidget {
  int index;
  Daily({Key? key, required this.index}) : super(key: key);
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
    final lists = Provider.of<Details>(context)
        .details
        .where((element) => element.id == index.toString())
        .toList();
    return Scaffold(
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
                                  image: lists.first.img,
                                  fit: BoxFit.fitWidth)),
                        ))),
              ),
              SizedBox(height: 5),
              Container(
                height: MediaQuery.of(context).size.height - 400,
                child: ListView.builder(
                    itemCount: lists.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailDescription(index: index)));
                          },
                          child: weekDevotion(index, lists[index]));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile weekDevotion(int index, Detail list) {
    return ListTile(
      leading: Image(image: list.img),
      title: CustomText(
        text: list.title,
        size: 16,
      ),
      subtitle: CustomText(
        text: list.date,
        size: 12,
      ),
      hoverColor: Colors.blueGrey,
      focusColor: Colors.grey,
      isThreeLine: true,
    );
  }
}
