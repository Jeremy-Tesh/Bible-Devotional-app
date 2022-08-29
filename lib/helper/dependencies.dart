import 'package:get/instance_manager.dart';
import 'package:yehiwot_kal/controllers/lesson_data_controller.dart';
import 'package:yehiwot_kal/data/api/api_client.dart';
import 'package:yehiwot_kal/data/repository/lesson_repo.dart';

Future<void> init() async {
//api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://"));

//repos
  Get.lazyPut(() => LessonRepo(apiClient: Get.find()));

//controllers
  Get.lazyPut(() => LessonDataController(lessonRepo: Get.find()));
}
