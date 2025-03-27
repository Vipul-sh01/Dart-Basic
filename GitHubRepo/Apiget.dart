// void main() {
//   String s = 'vipul';
//   try {
//     int n = int.parse(s); // parse() used for converting.
//     print(n);
//   } catch (e) {
//     print('Error: The string "$s" is not a valid integer.');
//   }
// }

import 'dart:convert';

void main() {
  String s = '{"name": "vipul"}'; // A valid JSON string
  try {
    var decoded = jsonDecode(s); // Parses the JSON string into a Dart object (Map)
    print(decoded); // Output: {name: vipul}
  } catch (e) {
    print('Error: The string "$s" is not valid JSON.');
  }
}


