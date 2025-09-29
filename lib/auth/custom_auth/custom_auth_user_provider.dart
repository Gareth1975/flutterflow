import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class KiKonnectAuthUser {
  KiKonnectAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<KiKonnectAuthUser> kiKonnectAuthUserSubject =
    BehaviorSubject.seeded(KiKonnectAuthUser(loggedIn: false));
Stream<KiKonnectAuthUser> kiKonnectAuthUserStream() => kiKonnectAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
