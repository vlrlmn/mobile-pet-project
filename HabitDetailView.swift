import SwiftUI

struct HabitDetailView: View {
    let habit: Habit

    var body: some View {
        VStack {
            Text("Track \(habit.title)")
                .font(.title)
            // Здесь позже будет календарь
        }
    }
}
