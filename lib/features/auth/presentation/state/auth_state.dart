class AuthState {
  int? toggleIndex = 0;
  String? email = "";
  String? password = "";
  String? passwordAgain = "";

  AuthState({
    this.toggleIndex,
    this.email,
    this.password,
    this.passwordAgain,
  });

  AuthState copyWith({
    int? toggleIndex,
    String? email,
    String? password,
    String? passwordAgain,
  }) {
    return AuthState(
      toggleIndex: toggleIndex ?? this.toggleIndex,
      email: email ?? this.email,
      password: password ?? this.password,
      passwordAgain: passwordAgain ?? this.passwordAgain,
    );
  }
}
