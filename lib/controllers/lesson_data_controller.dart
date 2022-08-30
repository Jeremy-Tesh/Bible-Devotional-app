import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:yehiwot_kal/data/repository/lesson_repo.dart';
import 'package:yehiwot_kal/models/Lesson.dart';

class LessonDataController extends GetxController {
  final LessonRepo lessonRepo;
  LessonDataController({required this.lessonRepo});
  List<dynamic> _lessonDataList = [];
  List<dynamic> get lessonDataList => _lessonDataList;

  Future<void> getLessonDataList() async {
    Response response = await lessonRepo.getLessonDataList();
    print(response.status.code);

    if (response.status.code == 200) {
      print("got lessons");
      _lessonDataList = [];
      _lessonDataList.addAll(response.body);
      print(_lessonDataList);
      update();
    } else {
      print("failed");
    }
  }
}
