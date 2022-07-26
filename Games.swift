//
//  Games.swift
//  navigationUI
//
//  Created by guillermo chacon alcala on 17/07/22.
//

import SwiftUI

// A view that creates the GameSettings object,
// and places it into the environment for the
// navigation view.
struct Games: View {
    @StateObject var settings = GameSettings()

    var body: some View {
        NavigationView {
            VStack {
                // A button that writes to the environment settings
                Button("Increase Score") {
                    settings.score="M"
                }

                NavigationLink(destination: ScoreView()) {
                    Text("Show Detail View")
                }
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
    }
}



// Our observable object class
class GameSettings: ObservableObject {
    @Published var score = "Memo"
}

// A view that expects to find a GameSettings object
// in the environment, and shows its score.
struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings

    var body: some View {
        Text("Score: \(settings.score)")
    }
}




struct Games_Previews: PreviewProvider {
    static var previews: some View {
        Games()
    }
}
