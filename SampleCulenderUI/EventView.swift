//
//  EventView.swift
//  SampleCulenderUI
//
//  Created by marcy731 on 2023/03/18.
//

import SwiftUI

struct EventView: View {
    let event: Event
    let width: CGFloat
    var height: CGFloat {
        CGFloat(event.minutesElapsed)
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: width, height: height)
                .foregroundColor(event.color.opacity(0.2))
            RoundedRectangle(cornerRadius: 5)
                .stroke(event.color, lineWidth: 1)
                .frame(width: width - 1, height: height - 1)
            RoundedRectangle(cornerRadius: 5)
                .stroke(.white, lineWidth: 1)
                .frame(width: width + 1, height: height + 1)
            VStack(alignment: .leading) {
                HStack {
                    Text(event.title)
                        .font(.caption)
                        .foregroundColor(event.color)
                        .padding(.top ,8)
                        .padding(.leading, 8)
                    Spacer()
                }
                Spacer()
            }
            .frame(width: width, height: height)
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: Event.mockEvents[0], width: 100)
    }
}
