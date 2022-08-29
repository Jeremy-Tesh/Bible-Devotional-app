import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yehiwot_kal/provider/details.dart';
import 'package:yehiwot_kal/widgets.dart/app_icon.dart';
import 'package:yehiwot_kal/widgets.dart/custom_text.dart';

class DetailDescription extends StatelessWidget {
  int index;
  DetailDescription({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final details = Provider.of<Details>(context).details;
    return Scaffold(
      body: Stack(children: [
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/a1.jpeg"),
              )),
            )),
        Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                  backgroundColor: Colors.transparent,
                  iconColor: Colors.white,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )),
        Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 1.87,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: SingleChildScrollView(
                  child: Column(
                children: [CustomText(text: details[index].description)],
              )),
            ))
      ]),
    );
  }
}
