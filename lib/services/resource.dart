import 'package:practice_6/model/adviceSlip.dart';
import "package:http/http.dart" as http;

class ResourceService {
  Future<AdviceSlip?> getAdvice() async {
    var client = http.Client();

    var uri = Uri.parse("https://api.adviceslip.com/advice");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      adviceSlipFromJson(json);
    }
  }
}
