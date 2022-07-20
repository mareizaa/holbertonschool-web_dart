String longestUniqueSubstring(String s) {
  Map<String, int> mapChars = Map<String, int>();
  int c = 0;
  int st = 0;
  int length = 0;

  for (int i = 0; i < s.length; i++) {
    String currentChar = s[i];
    bool isExistingCharInMap =
        mapChars[currentChar] != null && mapChars[currentChar]! >= c;

    if (isExistingCharInMap) {
      c = mapChars[currentChar]! + 1;
    }

    mapChars[currentChar] = i;
    bool isLongerNewString = length < i - c + 1;

    if (isLongerNewString) {
      length = i - c + 1;
      st = c;
    }
  }
  return s.substring(st, st + length);
}
