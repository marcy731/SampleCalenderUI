//
//  EventTimelineView.swift
//  SampleCulenderUI
//
//  Created by marcy731 on 2023/03/18.
//

import SwiftUI

struct EventTimelineView: View {
    let events: [Event]
    let oneMinuteHeight: CGFloat = 1.0
    let maxWidth = UIScreen.main.bounds.width - 50 - 20
    
    var body: some View {
        ZStack {
            ForEach(events) { event in
                VStack {
                    Spacer()
                        .frame(height: CGFloat(event.start.minutesSinceStartOfDay()))
                    HStack(spacing: 0) {
                        let overlappingEvents = overlappingEvents(for: event)
                        let width = maxWidth / CGFloat(overlappingEvents.count)
                        EventView(event: event, width: width)
                            .offset(x: xOffset(
                                event: event,
                                overlappingEvents: overlappingEvents,
                                eventWidth: width
                            ))
                        Spacer()
                    }.padding(.leading, 50)
                    Spacer()
                }
            }
        }
    }
    
    func xOffset(event: Event, overlappingEvents: [Event], eventWidth: CGFloat) -> CGFloat {
        if let index = overlappingEvents.firstIndex(where: { $0.id == event.id }) {
            return CGFloat(index) * eventWidth
        }
        return 0
    }
    
    func overlappingEvents(for event: Event) -> [Event] {
        events
            .filter {
                $0.elapsedRange.overlaps(event.elapsedRange)
            }
    }
}

struct EventTimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(events: Event.mockEvents)
    }
}
