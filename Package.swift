// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IrohaCryptoPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "IrohaCryptoPackage",
            targets: ["IrohaCryptoPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tesseract-one/UncommonCrypto.swift.git", from: "0.1.0"),
        .package(url: "https://github.com/tesseract-one/Sr25519.swift.git", from: "0.1.3"),
        .package(url: "https://github.com/tesseract-one/CSecp256k1.swift.git", from: "0.1.0"),
        .package(url: "https://github.com/tesseract-one/Bip39.swift.git", from: "0.1.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "IrohaCryptoPackage",
            dependencies: ["Sr25519", "Ed25519", "CSecp256k1", "Bip39", "UncommonCrypto"]),
        ]
)