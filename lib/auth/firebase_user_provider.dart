import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FinanceflowFirebaseUser {
  FinanceflowFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FinanceflowFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FinanceflowFirebaseUser> financeflowFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FinanceflowFirebaseUser>(
        (user) => currentUser = FinanceflowFirebaseUser(user));
