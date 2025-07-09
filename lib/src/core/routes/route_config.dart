import 'package:freshiest_cwash_app/src/core/routes/route_constant.dart';
import 'package:freshiest_cwash_app/src/features/screens/onboarding/presentation/onboarding_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/common_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'build_page_with_transition.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteConst.onboardingScreen,

    /// Start at the splash screen
    routes: [
      // StatefulShellRoute.indexedStack(
      //   builder: (context, state, navigationShell) =>
      //       BottomNavBar(navigationShell: navigationShell),
      //   branches: [
      //     // StatefulShellBranch(
      //     //   routes: [
      //     //     GoRoute(
      //     //       path: RouteConst.homeScreen,
      //     //       builder: (context, state) => const HomeScreenViewer(),
      //     //     ),
      //     //   ],
      //     // ),
      //     // StatefulShellBranch(
      //     //   routes: [
      //     //     GoRoute(
      //     //       path: RouteConst.jobScreen,
      //     //       builder: (context, state) => const JobScreen(),
      //     //     ),
      //     //   ],
      //     // ),
      //     // StatefulShellBranch(
      //     //   routes: [
      //     //     GoRoute(
      //     //       path: RouteConst.mapScreen,
      //     //       builder: (context, state) => const MapScreen(),
      //     //     ),
      //     //   ],
      //     // ),
      //     // StatefulShellBranch(
      //     //   routes: [
      //     //     GoRoute(
      //     //       path: RouteConst.settingScreen,
      //     //       builder: (context, state) => const ProfileSettingScreen(),
      //     //     ),
      //     //   ],
      //     // ),
      //   ],
      // ),

      GoRoute(
        path: RouteConst.onboardingScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: OnboardingScreen(),
          );
        },
      ),
    ],
  );
}
