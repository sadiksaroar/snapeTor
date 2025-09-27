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
import 'package:snape_tour/presentaion/screens/chatBoot/chatboot_demo.dart';
import 'package:snape_tour/presentaion/screens/explore/expolre.dart';
import 'package:snape_tour/presentaion/screens/home/cheack_in.dart';
import 'package:snape_tour/presentaion/screens/home/create_post.dart';
import 'package:snape_tour/presentaion/screens/user/edit_profile/change_password/change_password.dart';
import 'package:snape_tour/presentaion/screens/user/edit_profile/edit_profile.dart';
import 'package:snape_tour/presentaion/screens/home/home_page.dart';
import 'package:snape_tour/presentaion/screens/splash_screen/splash_screen.dart';
import 'package:snape_tour/presentaion/screens/user/edit_profile/my_account/my_account.dart';
import 'package:snape_tour/presentaion/screens/user/saved_experience/saved_exprience.dart';
import 'package:snape_tour/presentaion/screens/user/support_center/support_center.dart';
import 'package:snape_tour/presentaion/screens/user/terms_policy/terms_policy.dart';
import 'package:snape_tour/presentaion/screens/user/user.dart';
import 'package:snape_tour/presentaion/screens/user/user_profile/user_profile.dart';

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
      GoRoute(
        path: AppRoutePaths.chatBootDemo,
        builder: (context, state) => ChatBootDemo(),
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
      GoRoute(
        path: AppRoutePaths.userProfile,
        builder: (context, state) => UserProfile(),
      ),
      GoRoute(
        path: AppRoutePaths.editProfile,
        builder: (context, state) => EditProfile(),
      ),
      GoRoute(
        path: AppRoutePaths.myAccount,
        builder: (context, state) => MyAccount(),
      ),
      GoRoute(
        path: AppRoutePaths.changePassword,
        builder: (context, state) => ChangePassword(),
      ),
      GoRoute(
        path: AppRoutePaths.svedExprience,
        builder: (context, state) => TourCardPage(),
      ),
      GoRoute(
        path: AppRoutePaths.supportCenterPage,
        builder: (context, state) => SupportCenterPage(),
      ),
      GoRoute(
        path: AppRoutePaths.termsPolicyPage,
        builder: (context, state) => TermsPolicyPage(),
      ),
      // ==================user page end here====================
    ],
  );
}
