// Copyright 2018 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:js/js.dart';

@JS()
class Chokidar {
  external ChokidarWatcher watch(String path, ChokidarOptions options);
}

@JS()
@anonymous
class ChokidarOptions {
  external bool? get usePolling;

  external factory ChokidarOptions({bool? usePolling});
}

@JS()
class ChokidarWatcher {
  external void on(String event, Function callback);
  external void close();
}

/// The Chokidar module.
///
/// See [the docs on npm](https://www.npmjs.com/package/chokidar).
@JS("chokidar")
external Chokidar get chokidar;
