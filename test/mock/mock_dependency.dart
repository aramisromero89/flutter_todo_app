import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_todo_app/model/api/api_client.dart';
import 'package:flutter_todo_app/model/repository/auth_repository.dart';
import 'package:flutter_todo_app/model/repository/task_repository.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:get_it/get_it.dart';

import 'mock_auth_repository.dart';
import 'mock_task_repository.dart';

Future<void> mockDependencies() async {
  await dotenv.load(fileName: ".env");
  GetIt.I.registerSingleton<GraphqlApiClient>(GraphqlApiClient());
  GetIt.I.registerSingleton<AuthRepository>(MockAuthRepository());
  GetIt.I.registerSingleton<TaskRepository>(MockTaskRepository());
  GetIt.I.registerSingleton<AuthProvider>(AuthProvider());
}
