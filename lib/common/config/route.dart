import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/features/home/view/widgets/all_blog_post.dart';
import 'package:kcfs_website/features/home/view/widgets/all_event_blog.dart';
import 'package:kcfs_website/features/home/view/widgets/all_galery.dart';
import 'package:kcfs_website/features/home/view/widgets/complete_form_registration.dart';
import 'package:kcfs_website/features/home/view/widgets/event_blog_detail.dart';
import 'package:kcfs_website/features/home/view/widgets/program_detail.dart';
import 'package:kcfs_website/features/home/view/widgets/school_overview_detail.dart';
import 'package:kcfs_website/features/loading/presentation/pages/loading_Page.dart';
import 'package:kcfs_website/main.dart';

final _sectionNavigatorKey = GlobalKey<NavigatorState>();
final _rootNavigatorKey = GlobalKey<NavigatorState>();
class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteConstants.loadingPage,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoadingPage(),
      ),
       GoRoute(
        path: RouteConstants.homePage,
        builder: (context, state) => const ResponsiveHomePage(),
      ),
      // GoRoute(
      //   path: RouteConstants.login,
      //   builder: (context, state) => const LoginPage(),
      // ),
      GoRoute(
        path: RouteConstants.programDetail,
        builder: (context, state) => const ProgramDetail(),
      ),
      GoRoute(
        path: RouteConstants.allBlogPost,
        builder: (context, state) => const AllBlogPost(),
      ),
      GoRoute(
        path: RouteConstants.eventDetail,
        builder: (context, state) => const EventBlogDetail(),
      ),
      GoRoute(
        path: RouteConstants.initiatePayment,
        builder: (context, state) => const InitiatePayment(),
      ),
       GoRoute(
        path: RouteConstants.formPurchaceCompletion,
        builder: (context, state) => const CompleteFormRegistration(),
      ),
      GoRoute(
        path: RouteConstants.allEvents,
        // builder: (context, state) => const AllEventBlog(),
        pageBuilder: (context, state) => CustomTransitionPage(
            child: const AllEventBlog(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            }),
      ),
      GoRoute(
        path: RouteConstants.aboutUs,
        builder: (context, state) => const SchoolOverviewDetail(),
      ),
      GoRoute(
        path: RouteConstants.allBlogPost,
        builder: (context, state) => const SchoolOverviewDetail(),
      ),
      GoRoute(
        path: RouteConstants.allGalery,
        builder: (context, state) => const AllGalery(),
      ),
    ],
  );
}
