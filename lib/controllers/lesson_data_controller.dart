import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:yehiwot_kal/data/repository/lesson_repo.dart';

class LessonDataController extends GetxController {
  final LessonRepo lessonRepo;
  LessonDataController({required this.lessonRepo});
  List<dynamic> _lessonDataList = [];
  List<dynamic> get lessonDataList => _lessonDataList;

  Future<void> getLessonDataList() async {
    Response response = await lessonRepo.getLessonDataList();

    if (response.status == 200) {
      _lessonDataList = [];
      //_lessonDataList.addAll();
      update();
    } else {}
  }
}
