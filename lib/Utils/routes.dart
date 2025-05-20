import 'package:family_tree/Presentation/Admin/Screens/add_member_screen.dart';
import 'package:family_tree/Presentation/Admin/Screens/dashboard.dart';
import 'package:family_tree/Presentation/Global/memberDetailsScreen.dart';
import 'package:family_tree/Presentation/Global/memberListScreen.dart';
import 'package:family_tree/Presentation/Admin/Screens/settingsPage.dart';
import 'package:family_tree/Presentation/Admin/admin_main_home.dart';
import 'package:family_tree/Presentation/Login/login.dart';
import 'package:family_tree/Presentation/Member/Screens/dashboard.dart';
import 'package:family_tree/Presentation/Member/Screens/settingsPage.dart';
import 'package:family_tree/Presentation/Member/member_main_home.dart';
import 'package:family_tree/splashscreen.dart';
import 'package:go_router/go_router.dart';

final GoRouter approuter = GoRouter(
  routes: [
    
    GoRoute(
      path: '/',
      builder: (context, state) => const FamilySplashScreen(),
    ),
     GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/memberDashboard',
      builder: (context, state) => const MemberDashboard(),
    ),
    GoRoute(
      path: '/adminDashboard',
      builder: (context, state) => const AdminDashboard(),
    ),
    GoRoute(
      path: '/memberlistscreen',
      builder: (context, state) => const MemberListscreen(),
    ),
    GoRoute(
      path: '/adminbottomnavbar',
      builder: (context, state) =>  AdminMainHome(),
    ),
    GoRoute(path: '/addmemberscreen',
      builder: (context, state) => const  AddMemberScreen(),
    ),
    GoRoute(path: '/memberdetailsscreen',
      builder: (context, state) => const  MemberDetailsScreen(),
    ),
    GoRoute(path: '/settings',
    builder: (context, state) => SettingsPage(),),
GoRoute(
      path: '/membersettings',
      builder: (context, state) =>  MemberSettingsPage(),
    ),
GoRoute(
      path: '/memberbottomnavbar',
      builder: (context, state) =>  MemberMainHome(),
    ),
    
  ],
);



