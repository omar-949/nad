import 'package:course_app/features/auth/presentation/forget_pass_view.dart';
import 'package:course_app/features/auth/presentation/sign_up_view.dart';
import 'package:course_app/features/auth/presentation/verify_code_view.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/log_in_view.dart';
import '../../features/splash/presentation/on_boarding_view.dart';
import '../../features/splash/presentation/splash_view.dart';

abstract class AppRouter {
  static const kOnboardingView = '/OnboardingView';
  static const kSignUpView = '/SignUpView';
  static const kForgetPassView = '/ForgetPassView';
  static const kVerifyCodeView = '/VerifyCodeView';
  static const kMyHomeView = '/MyHomeView';
  static const kMyLogin = '/login';
  static const kCourseDetails = '/CourseDetail';
  static const kBookingHistory = '/BookingView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingView();
        },
      ),
      GoRoute(
        path: kSignUpView,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpView();
        },
      ),
      GoRoute(
        path: kForgetPassView,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgetPassView();
        },
      ),
      GoRoute(
        path: kVerifyCodeView,
        builder: (BuildContext context, GoRouterState state) {
          return const VerifyCodeView();
        },
      ),

      GoRoute(
        path: '/login',
        builder: (context, state) => const LogInView(),
      ),

    ],
  );
}
