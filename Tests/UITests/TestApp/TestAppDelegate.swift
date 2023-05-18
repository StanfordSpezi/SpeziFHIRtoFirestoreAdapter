//
// This source file is part of the Stanford Spezi open-source project.
//
// SPDX-FileCopyrightText: 2022 Stanford University and the project authors (see CONTRIBUTORS.md)
//
// SPDX-License-Identifier: MIT
//

import Spezi
@preconcurrency import SpeziFHIR
import SpeziFHIRToFirestoreAdapter
import SpeziFirestore
import SwiftUI


class TestAppDelegate: SpeziAppDelegate {
    override var configuration: Configuration {
        Configuration(standard: FHIR()) {
            Firestore {
                FHIRToFirestoreAdapter()
            }
        }
    }
}
