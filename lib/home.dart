import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yehiwot_kal/widgets.dart/custom_text.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "የህይወት ቃል", size: 25),
                CustomText(text: "see all", size: 14),
              ],
            ),
            Container(
                height: 240,
                width: double.maxFinite,
                child: ListView.builder(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return _buildPageItem(position);
                  },
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 120,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/a1.jpeg"), fit: BoxFit.cover)),
          ),
          CustomText(
            text: "የህይወት ቃል",
            size: 10,
          )
        ],
      ),
    );
  }
}
