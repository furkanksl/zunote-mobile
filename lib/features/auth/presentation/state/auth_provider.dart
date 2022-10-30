import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zunote/core/data/service/firebase_service.dart';
import 'package:zunote/features/auth/data/repository/auth_repository_impl.dart';
import 'package:zunote/features/auth/data/service/auth_service.dart';
import 'package:zunote/features/auth/presentation/state/auth_state.dart';
import 'package:zunote/features/auth/presentation/state/auth_state_notifier.dart';

final authProvider = Provider<FirebaseService>((ref) => FirebaseService());
final authRepositoryProvider = Provider<AuthRepositoryImpl>(
  (ref) => AuthRepositoryImpl(
    authService: AuthServiceImpl(),
  ),
);

final authPageProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier());

final authStateProvider = StreamProvider<User?>((ref) => ref.watch(authProvider).authStateChange);
