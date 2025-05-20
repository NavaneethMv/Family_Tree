import 'package:family_tree/data/services/authentication_service.dart';
import 'package:family_tree/data/services/supabase_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/routes.dart';
import 'routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServices();

  runApp(const MyApp());
}

Future<void> initializeServices() async {
  await Get.putAsync(() => SupabaseService().init());
  await Get.putAsync(() => AuthenticationService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Family tree",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      getPages: AppPages.routes,
      initialRoute: AppRoutes.splash,
    );
  }
}
