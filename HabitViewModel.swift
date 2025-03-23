import Foundation

class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []

    func addHabit(_ habit: Habit) {
        habits.append(habit)
        // здесь можно сохранить в UserDefaults/CoreData
    }
}
