// swift-tools-version:5.7

//
// This source file is part of the CardinalKit open-source project
// 
// SPDX-FileCopyrightText: 2022 Stanford University and the project authors (see CONTRIBUTORS.md)
// 
// SPDX-License-Identifier: MIT
//

import PackageDescription


let package = Package(
    name: "CardinalKitFHIRToFirestoreAdapter",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "CardinalKitFHIRToFirestoreAdapter", targets: ["CardinalKitFHIRToFirestoreAdapter"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/FHIRModels", .upToNextMinor(from: "0.5.0")),
        .package(url: "https://github.com/StanfordBDHG/CardinalKit", .upToNextMinor(from: "0.4.1")),
        .package(url: "https://github.com/StanfordBDHG/CardinalKitFHIR", .upToNextMinor(from: "0.2.1")),
        .package(url: "https://github.com/StanfordBDHG/CardinalKitFirebase", .upToNextMinor(from: "0.2.0"))
    ],
    targets: [
        .target(
            name: "CardinalKitFHIRToFirestoreAdapter",
            dependencies: [
                .product(name: "CardinalKit", package: "CardinalKit"),
                .product(name: "CardinalKitFHIR", package: "CardinalKitFHIR"),
                .product(name: "CardinalKitFirestore", package: "CardinalKitFirebase"),
                .product(name: "ModelsR4", package: "FHIRModels")
            ]
        ),
        .testTarget(
            name: "CardinalKitFHIRToFirestoreAdapterTests",
            dependencies: [
                .target(name: "CardinalKitFHIRToFirestoreAdapter"),
                .product(name: "CardinalKitFHIR", package: "CardinalKitFHIR"),
                .product(name: "ModelsR4", package: "FHIRModels")
            ]
        )
    ]
)
