import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:get_it/get_it.dart';
import '../mock/mock_dependency.dart';

main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await mockDependencies();
  final provider = GetIt.I<AuthProvider>();
  group("AuthProvider", () {
    test('SignUp', () async {
      await provider.signUp("a", "b", "c");
      expect(provider.session?.userName, equals("a"));
    });

    test('SignIn', () async {
      await provider.signIn("a", "b");
      expect(provider.session?.userName, equals("a"));
    });

    test('SignOut', () async {
      await provider.signOut();
      expect(provider.session, isNull);
    });
  });
}
