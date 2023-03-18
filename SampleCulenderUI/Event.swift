//
//  Event.swift
//  SampleCulenderUI
//
//  Created by marcy731 on 2023/03/18.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let title: String
    let start: Date
    let end: Date
    let color: Color
    
    var minutesElapsed: Int {
        end.minutes(since: start)
    }
    
    var elapsedRange: Range<Int> {
        start.minutesSinceStartOfDay()..<end.minutesSinceStartOfDay()
    }
    
    static let mockEvents: [Event] = [
        Event(title: "Event 0", start: Date(yyyyMMddHHmm: "202203180330")!, end: Date(yyyyMMddHHmm: "202203180415")!, color: .red),
        Event(title: "Event 1", start: Date(yyyyMMddHHmm: "202203180430")!, end: Date(yyyyMMddHHmm: "202203181200")!, color: .orange),
        Event(title: "Event 2", start: Date(yyyyMMddHHmm: "202203180900")!, end: Date(yyyyMMddHHmm: "202203181330")!, color: .blue),
        Event(title: "Event 3", start: Date(yyyyMMddHHmm: "202203181230")!, end: Date(yyyyMMddHHmm: "202203181430")!, color: .green),
        Event(title: "Event 4", start: Date(yyyyMMddHHmm: "202203181230")!, end: Date(yyyyMMddHHmm: "202203181900")!, color: .purple),
        Event(title: "Event 5", start: Date(yyyyMMddHHmm: "202203180000")!, end: Date(yyyyMMddHHmm: "202203180100")!, color: .cyan),
        Event(title: "Event 6", start: Date(yyyyMMddHHmm: "202203181700")!, end: Date(yyyyMMddHHmm: "202203182000")!, color: .brown),
        Event(title: "Event 7", start: Date(yyyyMMddHHmm: "202203180600")!, end: Date(yyyyMMddHHmm: "202203180800")!, color: .yellow),
        Event(title: "Event 8", start: Date(yyyyMMddHHmm: "202203181500")!, end: Date(yyyyMMddHHmm: "202203181700")!, color: .indigo),
        Event(title: "Event 9", start: Date(yyyyMMddHHmm: "202203180200")!, end: Date(yyyyMMddHHmm: "202203180300")!, color: .mint),
        Event(title: "Event 10", start: Date(yyyyMMddHHmm: "202203180200")!, end: Date(yyyyMMddHHmm: "202203180300")!, color: .pink),
        Event(title: "Event 11", start: Date(yyyyMMddHHmm: "202203181230")!, end: Date(yyyyMMddHHmm: "202203181400")!, color: .pink),
    ]
}
