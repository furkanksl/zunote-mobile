class NotesState {
  int? toggleIndex = 0;

  NotesState({
    this.toggleIndex,
  });

  NotesState copyWith({
    int? toggleIndex,
    String? email,
    String? password,
    String? passwordAgain,
  }) {
    return NotesState(
      toggleIndex: toggleIndex ?? this.toggleIndex,
    );
  }
}
