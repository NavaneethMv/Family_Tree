import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:family_tree/data/services/supabase_service.dart';

class AuthenticationService extends GetxService {
  final SupabaseService _supabaseService = Get.find<SupabaseService>();

  SupabaseClient get _supabaseClient => _supabaseService.client;

  final Rx<User?> currentUser = Rx<User?>(null);

  Future<AuthenticationService> init() async {
    currentUser.value = _supabaseClient.auth.currentUser;

    // Listen to auth state changes
    _supabaseClient.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      final Session? session = data.session;

      switch (event) {
        case AuthChangeEvent.signedIn:
        case AuthChangeEvent.userUpdated:
          currentUser.value = session?.user;
          break;
        case AuthChangeEvent.signedOut:
          currentUser.value = null;
          break;
        default:
          break;
      }
    });

    return this;
  }

  // Sign up with email and password
  Future<void> signUp(
      {required String email,
      required String password,
      String? membership}) async {
    final AuthResponse response = await _supabaseService.client.auth.signUp(
      email: email,
      password: password,
    );

    if (response.user != null) {
      await _supabaseService.client.from('users').insert([
        {
          'id': response.user!.id,
          'email': email,
          'membership': membership,
        },
      ]);
    } else {
      throw Exception('Error signing up user: $response');
    }
  }

  // Sign in with email and password
  Future<void> signIn({required String email, required String password}) async {
    try {
      await _supabaseService.client.auth.signInWithPassword(
        email: email,
        password: password,
      );
    } catch (error) {
      rethrow;
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      await _supabaseService.client.auth.signOut();
    } catch (error) {
      rethrow;
    }
  }

  // Reset password
  Future<void> resetPassword(String email) async {
    try {
      await _supabaseService.client.auth.resetPasswordForEmail(email);
    } catch (error) {
      rethrow;
    }
  }
}
