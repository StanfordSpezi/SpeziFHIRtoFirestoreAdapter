//
// This source file is part of the CardinalKit open-source project
//
// SPDX-FileCopyrightText: 2022 Stanford University and the project authors (see CONTRIBUTORS.md)
//
// SPDX-License-Identifier: MIT
//

import CardinalKitFHIR
import CardinalKitFirestore
import SwiftUI


struct ContentView: View {
    @EnvironmentObject var healthKitComponent: Firestore<FHIR>
    @EnvironmentObject var fhirStandard: FHIR
    
    
    var body: some View {
        Text("Passed")
            .navigationTitle("Tests")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
