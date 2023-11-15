import SwiftUI

struct ContentView: View {
    @State private var roll = Roll(name: "d6")

    var body: some View {
        HStack {
            TextField("Dice...", text: $roll.name) {

                print("Also Rolling")
                print(roll.name)
            }
            Button("Roll", systemImage: "dice") {
                print("Rolling")
                print(roll.name)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
