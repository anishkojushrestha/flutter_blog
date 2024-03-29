part of 'router_import.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        //HomeScreen is generated as HomeRoute because
        //of the replaceInRouteName property
        AutoRoute(page: SplashRoute.page, path: "/", initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: OnBoardRoute.page),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: GeneralRoute.page),
        AutoRoute(page: TagsRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: AddpostRoute.page),
        AutoRoute(page: CatagoriesRoute.page),
        AutoRoute(page: HomeDetailsRoute.page),
      ];
}
