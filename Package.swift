// swift-tools-version:5.7

//
// This source file is part of the Stanford Spezi open-source project.
// 
// SPDX-FileCopyrightText: 2022 Stanford University and the project authors (see CONTRIBUTORS.md)
// 
// SPDX-License-Identifier: MIT
//

import PackageDescription


let package = Package(
    name: "SpeziFHIRToFirestoreAdapter",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "SpeziFHIRToFirestoreAdapter", targets: ["SpeziFHIRToFirestoreAdapter"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/FHIRModels", .upToNextMinor(from: "0.5.0")),
        .package(url: "https://github.com/StanfordSpezi/Spezi", .upToNextMinor(from: "0.5.0")),
        .package(url: "https://github.com/StanfordSpezi/SpeziFHIR", .upToNextMinor(from: "0.3.0")),
        .package(url: "https://github.com/StanfordSpezi/SpeziFirebase", .upToNextMinor(from: "0.3.0"))
    ],
    targets: [
        .target(
            name: "SpeziFHIRToFirestoreAdapter",
            dependencies: [
                .product(name: "Spezi", package: "Spezi"),
                .product(name: "SpeziFHIR", package: "SpeziFHIR"),
                .product(name: "SpeziFirestore", package: "SpeziFirebase"),
                .product(name: "ModelsR4", package: "FHIRModels")
            ]
        ),
        .testTarget(
            name: "SpeziFHIRToFirestoreAdapterTests",
            dependencies: [
                .target(name: "SpeziFHIRToFirestoreAdapter"),
                .product(name: "SpeziFHIR", package: "SpeziFHIR"),
                .product(name: "ModelsR4", package: "FHIRModels")
            ]
        )
    ]
)
