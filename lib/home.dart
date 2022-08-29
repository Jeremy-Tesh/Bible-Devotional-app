import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:yehiwot_kal/daily.dart';
import 'package:yehiwot_kal/detail_description.dart';
import 'package:yehiwot_kal/models/Lesson.dart';
import 'package:yehiwot_kal/provider/lessons.dart';
import 'package:yehiwot_kal/widgets.dart/custom_text.dart';
import 'package:yehiwot_kal/widgets.dart/navbar.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    final lesson = Provider.of<Lessons>(context).lessons;
    return Scaffold(
      drawer: Drawer(
        child: NavBar(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 2.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/a1.jpeg"),
                )),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "የህይወት ቃል", size: 25),
                  CustomText(text: "see all", size: 14),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  height: 280,
                  width: double.maxFinite,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: ListView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: lesson.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Daily(index: index)));
                          },
                          child: _buildPageItem(lesson[index]));
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageItem(Lesson lesson) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: lesson.img, fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomText(
              text: lesson.title,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
