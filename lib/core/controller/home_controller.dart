import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:radio_nepal/core/model/api/api_response.dart';
import 'package:radio_nepal/core/model/home_api/home_response.dart';
import 'dart:convert';
import 'package:radio_nepal/core/utils/constants.dart';
import 'package:radio_nepal/core/utils/utils.dart';

class HomeController extends GetxController {
  late ApiResponse<HomeResponse> _homeResponse;
  ApiResponse<HomeResponse> get data => _homeResponse;
  bool isLoading = false;
  @override
  void onInit() async {
    // var connected = await Utilities.isInternetWorking();
    // if (connected) fetchdata;
    fetchHomeResponse();
    super.onInit();
  }

  void fetchHomeResponse() async {
    toggleLoading(true);
    var params = {"appid": Constants.API_KEY};
    Uri uri = Uri.https(APIURLs.mainUrl, APIURLs.home, params);
    print(uri);
    try {
      var apiResp = await http.get(uri, headers: headers);
      Map<String, dynamic> jsonObj = json.decode(apiResp.body);

      if (apiResp.statusCode == 200) {
        _homeResponse = ApiResponse(
            true, 'Home Data fetched.', HomeResponse.fromJson(jsonObj));
      } else {
        _homeResponse = ApiResponse(false, jsonObj['message'], null);
      }
    } catch (e) {
      _homeResponse = ApiResponse(false, e.toString(), null);
    }
    toggleLoading(false);
  }

  toggleLoading(bool val) {
    isLoading = val;
    update();
  }
}
