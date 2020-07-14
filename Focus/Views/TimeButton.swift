//
//  TimeLabelView.swift
//  Focus
//
//  Created by Pao Yu on 2020-07-13.
//

import SwiftUI

struct TimeButton: View {
    
    @EnvironmentObject var timeRobot: TimeRobot
    
    var remainingTime: String { String(format: "%0.0f", timeRobot.timeRemaining) }
    let completedIcon: String = "checkmark.circle.fill"
    
    var body: some View {
        
        ZStack {
            if  timeRobot.timerActive == true {
                Text(remainingTime)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemGray))
                    .onLongPressGesture(perform: timeRobot.resetFocusTimer)
            } else {
                Image(systemName: completedIcon)
                    .font(.largeTitle)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemGreen))
                    .onTapGesture() { self.timeRobot.runFocusTimer(time: 10) }
            }
            
        }
    }
}
