import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:developer' as developer;

class SupabaseService extends GetxService {
  late SupabaseClient client;

  Future<SupabaseService> init() async {
    try {
      await Supabase.initialize(
          url: dotenv.env['SUPABASE_URL']!,
          anonKey: dotenv.env['SUPABASE_ANON_KEY']!);

      client = Supabase.instance.client;

      return this;
    } catch (e) {
      developer.log("Error initializing Supabase: $e");
      rethrow;
    }
  }
}
