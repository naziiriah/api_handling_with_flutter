// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:practice_6/model/adviceSlip.dart';

class ResourceService {
  final String _url = "https://api.adviceslip.com/advice";

  Future getAdvice() async {
    try {
      Response response = await Dio().get(_url);
      AdviceSlip adviceSlip = AdviceSlip.fromJson(response.data);

      return adviceSlip;
    } on DioError catch (e) {
      print(e);
    }
  }
}
