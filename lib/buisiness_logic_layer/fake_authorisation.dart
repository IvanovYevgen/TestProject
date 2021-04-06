import 'dart:async';

class FakeAuthorisation {
  static void authorisation() {
    Timer(Duration(seconds: 2), () {
      print("auth is done");
    });
  }
}
