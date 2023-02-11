import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AngelProjectFirebaseUser {
  AngelProjectFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AngelProjectFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AngelProjectFirebaseUser> angelProjectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AngelProjectFirebaseUser>(
      (user) {
        currentUser = AngelProjectFirebaseUser(user);
        return currentUser!;
      },
    );
