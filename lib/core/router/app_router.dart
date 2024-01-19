import 'package:auto_route/auto_route.dart';
import 'package:hogwarts_test_project/core/constants/app_router_constants.dart';
import 'package:hogwarts_test_project/core/router/app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          path: AppRouterConstants.mainPage,
          initial: true,
        ),
        AutoRoute(
          page: DetailsRoute.page,
          path: AppRouterConstants.detailsPage,
        ),
      ];
}
