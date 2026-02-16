void main() {
  var haystack = "sadbutsad";
  var needle = "sad";
  print(strStr(haystack, needle));
}

int strStr(String haystack, String needle) {
  if (!haystack.contains(needle)) return -1;
  return haystack.indexOf(needle);
}
