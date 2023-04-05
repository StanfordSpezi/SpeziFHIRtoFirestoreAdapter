//
// This source file is part of the CardinalKit open-source project
//
// SPDX-FileCopyrightText: 2022 Stanford University and the project authors (see CONTRIBUTORS.md)
//
// SPDX-License-Identifier: MIT
//

import CardinalKit
@preconcurrency import CardinalKitFHIR
import CardinalKitFHIRToFirestoreAdapter
import CardinalKitFirestore
import SwiftUI


class TestAppDelegate: CardinalKitAppDelegate {
    override var configuration: Configuration {
        Configuration(standard: FHIR()) {
            Firestore {
                FHIRToFirestoreAdapter()
            }
        }
    }
}
