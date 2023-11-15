import SwiftUI

struct ContentView: View {
    @State private var dice = Dice(name: "d6")
    private let roller = Roller()

    var body: some View {
        HStack {
            TextField("Dice...", text: $dice.name) {
                roller.roll(dice: dice)
            }
            Button("Roll", systemImage: "dice") {
                roller.roll(dice: dice)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
