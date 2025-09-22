import 'package:go_router/go_router.dart';
import 'package:snape_tour/core/routes/route_path.dart';
import 'package:snape_tour/presentaion/screens/auth/forget_password.dart';
import 'package:snape_tour/presentaion/screens/auth/passowrd_rest.dart';
import 'package:snape_tour/presentaion/screens/auth/password_update.dart';
import 'package:snape_tour/presentaion/screens/auth/set_new_password.dart';
import 'package:snape_tour/presentaion/screens/auth/sign_in.dart';
import 'package:snape_tour/presentaion/screens/auth/sign_up.dart';
import 'package:snape_tour/presentaion/screens/auth/verify_code.dart';
import 'package:snape_tour/presentaion/screens/chatBoot/chat_bot.dart';
import 'package:snape_tour/presentaion/screens/explore/expolre.dart';
import 'package:snape_tour/presentaion/screens/home/cheack_in.dart';
import 'package:snape_tour/presentaion/screens/home/create_post.dart';
import 'package:snape_tour/presentaion/screens/home/home_page.dart';
import 'package:snape_tour/presentaion/screens/splash_screen/splash_screen.dart';
import 'package:snape_tour/presentaion/screens/user/user.dart';

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

      // home page tart hre
      GoRoute(
        path: AppRoutePaths.createpostpage,

        builder: (context, state) => Createpostpage(),
      ),
      GoRoute(
        path: AppRoutePaths.cheackIn,
        builder: (context, state) => CheackIn(),
      ),

      //==================ChatBoot page start here==================
      GoRoute(
        path: AppRoutePaths.chatBoot,
        builder: (context, state) => ChatBot(),
      ),
      // ==================ChatBoot page end here==============

      // ==================Explor page start here================
      GoRoute(
        path: AppRoutePaths.explor,
        builder: (context, state) => Expolre(),
      ),
      // ==================Explor page end here==================

      // ==================user page start here==================
      GoRoute(
        path: AppRoutePaths.user,
        // ss
        builder: (context, state) => User(),
      ),
      // ==================user page end here====================
    ],
  );
}
