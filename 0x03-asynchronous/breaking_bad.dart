// Print names returns from API call
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printBbCharacters() async {
  String url = 'https://breakingbadapi.com/api/characters';
  try {
    var response = await http.get(Uri.parse(url));
    var characters = json.decode(response.body);
    characters.forEach((character) => print(character['name']));
  } catch (e) {
    print("error caught: $e");
  }
}
