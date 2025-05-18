import 'package:family_tree/Presentation/Admin/admin_main_home.dart';
import 'package:family_tree/Presentation/Admin/screens/add_member_screen.dart';
import 'package:family_tree/Presentation/Admin/screens/dashboard.dart';
import 'package:family_tree/Presentation/Admin/screens/memberDetailsScreen.dart';
import 'package:family_tree/Presentation/Admin/screens/memberListScreen.dart';
import 'package:family_tree/Presentation/Login/login.dart';
import 'package:family_tree/Presentation/Member/memberdashboard.dart';
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
      builder: (context, state) => const Memberdashboard(),
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
  ],
);



