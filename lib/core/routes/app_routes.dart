import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/routes/route_path.dart';
import 'package:snape_tour/presentaion/screens/auth/sign_in.dart';
import 'package:snape_tour/presentaion/screens/auth/sign_up.dart';
import 'package:snape_tour/presentaion/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  //  app routes
  static final GoRouter router = GoRouter(
    routes: [
      // ================> auth start<==============
      GoRoute(
        path: AppRoutePaths.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.siginInViews,
        builder: (context, state) => const SiginInViews(),
      ),
      GoRoute(
        path: AppRoutePaths.signUp,
        builder: (context, state) => const SignUp(),
      ),

      // ================> auth end<==============
    ],
  );
}
