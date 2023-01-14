import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BeerMFirebaseUser {
  BeerMFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BeerMFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BeerMFirebaseUser> beerMFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BeerMFirebaseUser>(
      (user) {
        currentUser = BeerMFirebaseUser(user);
        return currentUser!;
      },
    );
