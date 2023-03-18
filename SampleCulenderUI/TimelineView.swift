//
//  TimelineView.swift
//  SampleCulenderUI
//
//  Created by marcy731 on 2023/03/18.
//

import SwiftUI

struct TimelineView: View {
    let events: [Event]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            ZStack {
                BackgroundView()
                EventTimelineView(events: events)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(events: Event.mockEvents)
    }
}
