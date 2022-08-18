import 'package:fluttercomplete_guide/models/news.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<News>?> getNews() async {
    var client = http.Client();

    var uri = Uri.parse('https://mobileapp.plmicto.tech/userNews.php');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return newsFromJson(json);
    }
  }
}
