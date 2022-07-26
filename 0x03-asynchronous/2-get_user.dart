import "2-main.dart";

Future<void> getUser() async {
  try {
    print(await fetchUser());
  } catch (e) {
    print("error caught: $e");
  }
}
