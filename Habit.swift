import Foundation

struct Habit: Identifiable, Codable {
    let id = UUID()
    var title: String
    var totalDays: Int
    var completedDays: [Date] = []
}
