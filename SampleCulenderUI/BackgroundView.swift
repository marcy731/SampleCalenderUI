//
//  BackgroundView.swift
//  SampleCulenderUI
//
//  Created by marcy731 on 2023/03/18.
//

import SwiftUI

struct BackgroundView: View {
    let oneMinuteHeight: CGFloat = 1.0

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(0..<24) { hour in
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 0.5)
                        .background(Color.gray)
                        .padding(.leading, 50)
                        .padding(.trailing, 20)
                        .overlay {
                            HStack {
                                Text("\(hour):00")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                    .frame(width: 50)
                                Spacer()
                            }
                        }
                    Spacer()
                }
                .frame(height: oneMinuteHeight * 60)
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            BackgroundView()
        }
    }
}
