//
//  TimeLabelView.swift
//  Focus
//
//  Created by Pao Yu on 2020-07-13.
//

import SwiftUI

struct TimeButton: View {
    
    @EnvironmentObject var timeRobot: TimeRobot
    
    var body: some View {
        
        ZStack {
            if  timeRobot.timerActive == true {
                Text(String(format: "%0.0f", timeRobot.timeRemaining))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemGray))
                    .onTapGesture(perform: timeRobot.runFocusTimer)
                    .onLongPressGesture(perform: timeRobot.resetFocusTimer)
            } else {
                Image(systemName: "checkmark.circle.fill")
                    .font(.largeTitle)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemGreen))
                    .onTapGesture(perform: timeRobot.runFocusTimer)
            }
            
        }
    }
}
