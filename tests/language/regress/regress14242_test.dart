// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Regression test for dart2js that used to crash on type literals
// used in a cascade send.

class A {
  var bar;
  var foo = {};
}

main() {
  var a = new A();
  a
    ..foo[Object] = 54
    ..bar = 42;
  if (a.foo.keys.first is! Type) {
    throw 'Test failed';
  }
}
