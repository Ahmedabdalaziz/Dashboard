import 'package:dash_board/ui/screens/dashboard_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const DashboardScreen());
  });
}
