import 'package:shared_preferences/shared_preferences.dart';
 bool? isadmin;
  bool? ismember;
getSharedprefdata()async{
   SharedPreferences sharedpref= await SharedPreferences.getInstance();
   isadmin= sharedpref.getBool('isadminlogedin');
   ismember=sharedpref.getBool('ismemberlogedin');
}