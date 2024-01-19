import 'package:flutter/material.dart';
import 'package:hogwarts_test_project/dependency_injector.dart';
import 'package:hogwarts_test_project/presentation/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjector.inject();
  runApp(const MyApp());
}
