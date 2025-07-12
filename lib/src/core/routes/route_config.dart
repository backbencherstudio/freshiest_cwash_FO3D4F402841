import 'package:freshiest_cwash_app/src/core/routes/route_constant.dart';
import 'package:freshiest_cwash_app/src/features/screens/booking_screen/presentation/booking_screen.dart';
import 'package:freshiest_cwash_app/src/features/screens/history_screens/presentation/history_screen.dart';
import 'package:freshiest_cwash_app/src/features/screens/home/presentation/home_screen.dart';
import 'package:freshiest_cwash_app/src/features/screens/onboarding/presentation/onboarding_screen.dart';
import 'package:freshiest_cwash_app/src/features/screens/profile_screens/presentation/profile_screen.dart';
import 'package:freshiest_cwash_app/src/features/screens/search_screen/presentation/search_screen.dart';
import 'package:freshiest_cwash_app/src/features/screens/service_details_screen/presentation/service_details_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/common_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../../features/screens/booking_screen/presentation/successful_screen/successful_screen.dart';
import '../../features/screens/feedback_screen/presentation/feedback_screen.dart';
import 'build_page_with_transition.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteConst.onboardingScreen,

    /// Start at the splash screen
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            BottomNavBar(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteConst.home,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteConst.search,
                builder: (context, state) => const SearchScreen(),
              ),
            ],
          ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: RouteConst.car,
          //       builder: (context, state) => const CarScreen(),
          //     ),
          //   ],
          // ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteConst.history,
                builder: (context, state) => const HistoryScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteConst.user,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),

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

      GoRoute(
        path: RouteConst.serviceDetails,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideBottomToTop,
            child: ServiceDetailsScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteConst.serviceBookingScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideBottomToTop,
            child: BookingScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteConst.successfulScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SuccessfulScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteConst.feedbackScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: FeedbackScreen(),
          );
        },
      ),


    ],
  );
}
