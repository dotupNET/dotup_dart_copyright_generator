

// build.yaml

/**

builders:

  copyrightBuilder:
    import: "package:copyright_generator/builder.dart"
    builder_factories: ["copyrightBuilder"]
    build_extensions: {".dart": [".dart.copyright"]}
    build_to: source
    auto_apply: root_package
    applies_builders: ["copyrightBuilder"]
    defaults:
      options:
        copyright: "Copyright dotup IT solutions - Peter Ullrich"
        text: [
          "// Some more",
          "// lines",
          "// in the header",
        ]

 */
