//
//  TimeBarForeground.swift
//  Focus
//
//  Created by Pao Yu on 2020-07-13.
//

import SwiftUI

struct TimeBarForeground: View {
   
    @EnvironmentObject var timeRobot: TimeRobot
    
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let color: Color
    
    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(color)
                .frame(width: width, height: timeRobot.progressBarHeight)
        }
    }
}
