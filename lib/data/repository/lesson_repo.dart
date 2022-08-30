import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:yehiwot_kal/data/api/api_client.dart';
import 'package:yehiwot_kal/utils/app_constants.dart';

class LessonRepo extends GetxService {
  final ApiClient apiClient; //api instance

  LessonRepo({required this.apiClient});

  Future<Response> getLessonDataList() async {
    return await apiClient.getData(AppConstants.LESSON_DATA_URI);
  }
}
