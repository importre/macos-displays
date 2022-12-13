// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "macos-displays",
  platforms: [
    .macOS(.v12),
  ],
  products: [
    .executable(name: "displays", targets: ["Displays"]),
  ],
  dependencies: [
    .package(url: "git@github.com:apple/swift-argument-parser.git", from: "1.2.0"),
  ],
  targets: [
    .executableTarget(
      name: "Displays",
      dependencies: [
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
      ]
    ),
  ]
)
