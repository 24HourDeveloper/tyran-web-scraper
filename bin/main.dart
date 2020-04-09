import '../lib/tyran_scraper.dart' as tyran_scraper;

void main(List<String> arguments) async {
  var content = await tyran_scraper.initiate();
  print(content);
}
