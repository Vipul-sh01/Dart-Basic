import 'package:html/parser.dart' as parser;

class EnrollmentValidator {
  /// Checks if the HTML contains a `<table>` element.
  static bool hasTable(String html) {
    return parser.parse(html).querySelector('table') != null;
  }

  /// Checks if the table has an "Enrollment ID" column.
  static bool isEnrollmentTable(String html) {
    final document = parser.parse(html);
    final table = document.querySelector('table');

    if (table == null) return false;

    final headers = table.querySelectorAll('tr th').map((th) => th.text.trim().toLowerCase()).toList();
    return headers.any((header) => header.contains("enrollment id") || header.contains("enrollment number"));
  }

  /// Checks if at least one enrollment ID exists in the table.
  static bool containsEnrollmentIds(String html) {
    final document = parser.parse(html);
    final rows = document.querySelectorAll('table tr').skip(1); // Skip header row

    return rows.any((row) {
      final cells = row.querySelectorAll('td');
      return cells.length > 2 && cells[2].text.trim().isNotEmpty;
    });
  }
}

void main() {
  String html = '''
  <table>
    <tr> <th>Name</th> <th>Bar Council</th> <th>Enrollment ID</th> </tr>
    <tr> <td>John Doe</td> <td>State A</td> <td>XYZ123</td> </tr>
  </table>''';

  print("Has Table: ${EnrollmentValidator.hasTable(html)}");  // true
  print("Is Enrollment Table: ${EnrollmentValidator.isEnrollmentTable(html)}");  // true
  print("Contains Enrollment IDs: ${EnrollmentValidator.containsEnrollmentIds(html)}");  // true
}
