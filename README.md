
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
        copyright: "Copyright dotup IT solutions - Peter Ullrich"
        text: [
          "// Some additional ",
          "// header text",
        ]
```

[dotup.de](https://dotup.de)

## install
`flutter pub add dotup_dart_copyright_builder --dev`

## Links

> ### dotup_dart_copyright_builder on [pub.dev](https://pub.dev/packages/dotup_dart_copyright_builder)
>
> ### Other widgets on [pub.dev](https://pub.dev/packages?q=dotup)
> 
> ### Other open source flutter projects on [Github](https://github.com/search?q=dotup_flutter)
> 
> ### Other open source dart projects on [Github](https://github.com/search?q=dotup_dart)
