import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zunote/features/auth/presentation/state/auth_state.dart';
import 'package:zunote/features/auth/presentation/state/auth_state_notifier.dart';

final authPageProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier());
