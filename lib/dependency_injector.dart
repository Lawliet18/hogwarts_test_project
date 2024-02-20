import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/core/router/app_router.dart';
import 'package:hogwarts_test_project/core/shared_prefs/shared_prefs.dart';
import 'package:hogwarts_test_project/data/api/hogwarts_api/hogwarts_api.dart';
import 'package:hogwarts_test_project/data/repository/characters_repository/characters_repository.dart';
import 'package:hogwarts_test_project/data/repository/characters_repository/i_characters_repository.dart';
import 'package:hogwarts_test_project/domain/data/app_data.dart';

class DependencyInjector {
  const DependencyInjector._();
  static Future<void> inject() async {
    // Api
    GetIt.instance.registerSingleton<HogwartsApi>(HogwartsApi(Dio()));

    //Services
    // GetIt.instance.registerSingleton<IAuthService>(AuthService());
    // GetIt.instance.registerSingleton<Auth>(AppleAuth());
    // GetIt.instance.registerSingleton<GoogleAuth>(GoogleAuth());

    // Repositories
    GetIt.instance
        .registerSingleton<ICharactersRepository>(CharactersRepository());

    // Core
    GetIt.instance.registerSingleton<AppRouter>(AppRouter());
    // GetIt.instance.registerSingleton<Analytics>(Analytics());
    GetIt.instance.registerSingletonAsync<SharedPrefs>(() async {
      await SharedPrefs.instance.init();
      return SharedPrefs.instance;
    });
    await GetIt.instance.isReady<SharedPrefs>();
    GetIt.instance.registerSingleton<AppData>(AppData());
  }
}
