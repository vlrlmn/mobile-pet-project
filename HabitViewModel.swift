class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []
    let maxHabits = 5

    func canAddMoreHabits() -> Bool {
        return habits.count < maxHabits
    }

    func addHabit(_ habit: Habit) {
        guard canAddMoreHabits() else {
            print("Max 5 goals")
            return
        }
        habits.append(habit)
    }
}
