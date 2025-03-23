import SwiftUI

struct AddHabitView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: HabitViewModel
    @State private var title = ""
    @State private var totalDays = 30

    var body: some View {
        Form {
            TextField("Goal", text: $title)
            Stepper("Days: \(totalDays)", value: $totalDays, in: 1...100)

            Button("Save") {
                let newHabit = Habit(title: title, totalDays: totalDays)
                viewModel.addHabit(newHabit)
                dismiss()
            }
            .disabled(!viewModel.canAddMoreHabits())

        }
        .navigationTitle("Новая привычка")
    }
}
