import 'package:family_tree/utils/constants.dart';
import 'package:family_tree/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/colours.dart';
import '../../../utils/teststyles.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool? showChangePassword = false;

  @override
  void initState() {
    super.initState();
    loadSharedPref();
  }

  Future<void> loadSharedPref() async {
    final value = await isadmin;
    setState(() {
      showChangePassword = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: darkWhite,
          appBar: AppBar(
            backgroundColor: darkWhite,
            title: Text(
              'Settings',
              style: headingStyle(),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                CupertinoIcons.back,
                size: 30,
                color: blackcolour,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                sizedBox_h30,
                settings_card(
                  action: 'change_password',
                  context: context,
                  iconbgclr: Colors.green[200]!,
                  buttonclr: Colors.green,
                  buttontext: 'Change',
                  constraints: constraints,
                  title: 'Password',
                  subtitle: 'Change your password',
                  icon: Icons.lock_outline,
                  iconcolor: whitecolour,
                ),
                sizedBox_h20,
                settings_card(
                  context: context,
                  action: 'logout',
                  iconbgclr: Colors.red[100]!,
                  buttonclr: Colors.red,
                  buttontext: 'Logout',
                  constraints: constraints,
                  title: 'Logout',
                  subtitle: 'End your current session',
                  icon: Icons.logout,
                  iconcolor: Colors.red,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Container settings_card(
    {required BoxConstraints constraints,
    required String title,
    required String subtitle,
    required Color buttonclr,
    required String buttontext,
    required IconData icon,
    required Color iconcolor,
    required Color iconbgclr,
    required BuildContext context,
    required String action}) {
  return Container(
    height: constraints.maxWidth / 5,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: whitecolour),
    child: Center(
      child: ListTile(
        title: Text(title),
        titleTextStyle: subHeadingStyle(color: blackcolour),
        subtitle: Text(subtitle),
        leading: CircleAvatar(
            backgroundColor: iconbgclr,
            radius: 30,
            child: Icon(
              icon,
              color: iconcolor,
            )),
        trailing: Container(
            height: 40,
            width: 80,
            decoration: BoxDecoration(
                color: buttonclr,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: TextButton(
                onPressed: () {
                  action == 'change_password'
                      ? showChangePasswordDialog(context)
                      : logout(context);
                },
                child: Text(
                  buttontext,
                  style: const TextStyle(
                      color: whitecolour, fontWeight: FontWeight.bold),
                ))),
      ),
    ),
  );
}

void showChangePasswordDialog(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text("Change Password"),
        content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: currentPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Current Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Enter current password' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: newPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "New Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value!.length < 6 ? 'At least 6 characters' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value != newPasswordController.text
                      ? 'Passwords do not match'
                      : null,
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Add your logic to change the password here
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Password changed successfully')),
                );
              }
            },
            child: const Text("Change"),
          ),
        ],
      );
    },
  );
}

void logout(BuildContext context) async {
  SharedPreferences _sharedpref = await SharedPreferences.getInstance();

  await _sharedpref.setBool('isadminlogedin', false);

  GoRouter.of(context).go('/login');
  print('member${_sharedpref.getBool('ismemberlogedin')}');
  print('Admin${_sharedpref.getBool('isadminlogedin')}');
}
