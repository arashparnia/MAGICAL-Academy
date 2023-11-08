import SwiftUI

struct MainView: View {
    @State private var selectedStage = 0
    @State private var selectedScenario: String?
    @State private var selectedCharacter: String?
    @State private var selectedAttire: String?

    var body: some View {
        VStack {
            switch selectedStage {
            case 0:
                ScenarioSelectionView(selectedScenario: $selectedScenario) {
                    advanceStage()
                }
                .transition(.scale)
            case 1:
                CharacterSelectionView(selectedCharacter: $selectedCharacter) {
                    advanceStage()
                }
                .transition(.scale)
            case 2:
                // Now showing StoryGenerationView instead of GeneratedImageView
                if let scenario = selectedScenario, let character = selectedCharacter, let attire = selectedAttire {
                    StoryGenerationView(selectedScenario: scenario, selectedCharacter: character, selectedAttire: attire)
                } else {
                    // Handle the case where scenario, character, or attire is not selected
                    Text("Please go back and make all selections.")
                }
            default:
                EmptyView()
            }
        }
    }

    private func advanceStage() {
        withAnimation {
            selectedStage += 1
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
