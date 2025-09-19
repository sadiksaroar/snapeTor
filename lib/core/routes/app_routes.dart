import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/routes/route_path.dart';
import 'package:snape_tour/presentaion/screens/auth/forget_password.dart';
import 'package:snape_tour/presentaion/screens/auth/passowrd_rest.dart';
import 'package:snape_tour/presentaion/screens/auth/password_update.dart';
import 'package:snape_tour/presentaion/screens/auth/set_new_password.dart';
import 'package:snape_tour/presentaion/screens/auth/sign_in.dart';
import 'package:snape_tour/presentaion/screens/auth/sign_up.dart';
import 'package:snape_tour/presentaion/screens/auth/verify_code.dart';
import 'package:snape_tour/presentaion/screens/home/home_page.dart';
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
      GoRoute(
        path: AppRoutePaths.forgetPasswordScreen,
        builder: (context, state) => ForgetPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.enterCode,
        builder: (context, state) => EnterCode(),
      ),
      GoRoute(
        path: AppRoutePaths.passwordReset,
        builder: (context, state) => PasswordReset(),
      ),
      GoRoute(
        path: AppRoutePaths.setNewPassword,
        builder: (context, state) => SetNewPassword(),
      ),
      GoRoute(
        path: AppRoutePaths.passwordUpdate,
        builder: (context, state) => PasswordUpdate(),
      ),
      GoRoute(
        path: AppRoutePaths.homePage,
        builder: (context, state) => HomePage(),
      ),
      // ================> auth end<==============
    ],
  );
}
