// Copyright 2019 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// This file shims dart:ui in web-only scenarios, getting rid of the need to
/// suppress analyzer warnings.

// NOTE: This shim exists so packages can import a single `dart_ui.dart` file
// without depending directly on `dart:ui` in web-only builds.
export 'dart_ui_fake.dart' if (dart.library.js_interop) 'dart_ui_real.dart';
