import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = HabitViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.habits) { habit in
                    NavigationLink(destination: HabitDetailView(habit: habit)) {
                        Text(habit.title)
                    }
                }
            }
            .navigationTitle("Habits")
            .toolbar {
                NavigationLink(destination: AddHabitView(viewModel: viewModel)) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}
