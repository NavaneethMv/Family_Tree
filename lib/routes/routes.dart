import 'package:family_tree/views/Global/screens/memberListScreen.dart';
import 'package:get/get.dart';
import 'package:family_tree/views/Splash/screens/splashscreen.dart';
import 'package:family_tree/views/Login/screens/login.dart';
import 'package:family_tree/views/Member/Screens/dashboard.dart';
import 'package:family_tree/views/Admin/screens/dashboard.dart';
import 'package:family_tree/views/Global/screens/memberDetailsScreen.dart';
import 'package:family_tree/views/Admin/screens/admin_main_home.dart';
import 'package:family_tree/views/Member/Screens/member_main_home.dart';
import 'package:family_tree/views/Admin/screens/add_member_screen.dart';
import 'package:family_tree/views/Admin/screens/settingsPage.dart';
import 'package:family_tree/views/Member/Screens/settingsPage.dart';
import 'package:family_tree/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const FamilySplashScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: AppRoutes.memberDashboard,
      page: () => const MemberDashboard(),
    ),
    GetPage(
      name: AppRoutes.adminDashboard,
      page: () => const AdminDashboard(),
    ),
    GetPage(
      name: AppRoutes.memberList,
      page: () => const MemberListscreen(),
    ),
    GetPage(
      name: AppRoutes.adminHome,
      page: () => AdminMainHome(),
    ),
    GetPage(
      name: AppRoutes.addMember,
      page: () => const AddMemberScreen(),
    ),
    GetPage(
      name: AppRoutes.memberDetails,
      page: () => const MemberDetailsScreen(),
    ),
    GetPage(
      name: AppRoutes.adminSettings,
      page: () => const SettingsPage(),
    ),
    GetPage(
      name: AppRoutes.memberSettings,
      page: () => const MemberSettingsPage(),
    ),
    GetPage(
      name: AppRoutes.memberHome,
      page: () => MemberMainHome(),
    ),
  ];
}
