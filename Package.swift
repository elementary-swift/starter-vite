// swift-tools-version:6.3
import PackageDescription

let package = Package(
  name: "elementary-web-app",
  platforms: [.macOS(.v26)],
  dependencies: [
    .package(url: "https://github.com/elementary-swift/elementary-ui.git", from: "0.6.0"),
    .package(url: "https://github.com/swiftwasm/JavaScriptKit.git", from: "0.56.0"),
  ],
  targets: [
    .executableTarget(
      name: "WebApp",
      dependencies: [
        .product(name: "ElementaryUI", package: "elementary-ui")
      ],
      swiftSettings: [
        .swiftLanguageMode(.v5)
      ],
    )
  ]
)
