import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:get_it/get_it.dart';
import '../mock/mock_dependency.dart';

main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await mockDependencies();
  group("AuthProvider", () {
    test('SignUp', () async {
      final provider = GetIt.I<AuthProvider>();
      // ignore: await_only_futures
      await provider.signUp("a", "b", "c");
      expect(provider.session?.userName, equals("a"));
    });

    test('SignIn', () async {
      final provider = GetIt.I<AuthProvider>();
      // ignore: await_only_futures
      await provider.signIn("a", "b");
      expect(provider.session?.userName, equals("a"));
    });

    test('SignOut', () async {
      final provider = GetIt.I<AuthProvider>();
      // ignore: await_only_futures
      await provider.signOut();
      expect(provider.session, isNull);
    });
  });
}
