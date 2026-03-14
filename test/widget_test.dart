import 'package:flutter_test/flutter_test.dart';
import 'package:haiphat_app/app.dart';

void main() {
  testWidgets('App starts with splash screen', (WidgetTester tester) async {
    await tester.pumpWidget(const HaiPhatApp());
    await tester.pump();
    expect(find.text('HAI PHAT IDC'), findsOneWidget);
  });
}
