![flutter](https://badgen.net/pub/flutter-platform/xml) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) ![forks](https://badgen.net/github/forks/dotupNET/dotup_dart_copyright_generator/) ![stars](https://badgen.net/github/stars/dotupNET/dotup_dart_copyright_generator/)

# dotup_dart_copyright_builder

Dart package that generates a header for each dart file.

## Usage

Usage example: build.yaml

```yaml

builders:

  copyrightBuilder:
    import: "package:dotup_dart_copyright_builder/builder.dart"
    builder_factories: ["copyrightBuilder"]
    build_extensions: {".dart": [".copyright.dart"]}
    build_to: source
    auto_apply: root_package
    applies_builders: ["copyrightBuilder"]
    defaults:
      options:
        force: false
        enabled: true
        copyright: "dotup IT solutions - Peter Ullrich"
        text: [
          "// Some additional ",
          "// header text",
        ]
```

Run: 
```shell
dart pub run build_runner build

or

flutter pub run build_runner build
```

Generated header:

```dart
// Powered by https://dotup.de
// Copyright (c) 2021, dotup IT solutions - Peter Ullrich
// Some additional
// header text

...your source code
```

> The end of the header is recognized by a blank line.
> If 'force' is true, headers will be removed and generated again


## Install
`flutter pub add dotup_dart_copyright_builder --dev`

## Links

> ### dotup_dart_copyright_builder on [pub.dev](https://pub.dev/packages/dotup_dart_copyright_builder)
>
> ### Other widgets on [pub.dev](https://pub.dev/packages?q=dotup)
> 
> ### Other open source flutter projects on [Github](https://github.com/search?q=dotup_flutter)
> 
> ### Other open source dart projects on [Github](https://github.com/search?q=dotup_dart)

# Flutter simulator | DFFP3
> Go to [https://flutter-apps.ml](https://flutter-apps.ml) and check out the awesome flutter simulator !

![Flutter simulator](https://flutter-apps.ml/wp-content/uploads/2021/10/Bildschirmfoto-2021-10-31-um-11.34.42-2048x1335.png)

> ## [dotup IT solutions](https://dotup.de)
