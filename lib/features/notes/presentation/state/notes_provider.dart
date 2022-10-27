import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zunote/features/notes/presentation/state/notes_state.dart';
import 'package:zunote/features/notes/presentation/state/notes_state_notifier.dart';

final notesPageProvider = StateNotifierProvider<NotesNotifier, NotesState>((ref) => NotesNotifier());
