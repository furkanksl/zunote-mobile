import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zunote/features/notes/presentation/state/notes_state.dart';

class NotesNotifier extends StateNotifier<NotesState> {
  NotesNotifier() : super(NotesState(toggleIndex: 0));

  void setToggleIndex(int idx) => state = state.copyWith(toggleIndex: idx);
}
