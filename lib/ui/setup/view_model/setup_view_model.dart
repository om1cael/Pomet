import 'package:supabase_flutter/supabase_flutter.dart';

class SetupViewModel {
  Future<void> signInAnonymously() async {
    await Supabase.instance.client.auth.signInAnonymously();
  }
}