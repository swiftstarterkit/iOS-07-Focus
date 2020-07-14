//
//  TimeBar.swift
//  Focus
//
//  Created by Pao Yu on 2020-07-13.
//

import SwiftUI

struct TimeBar: View {
    
    @EnvironmentObject var timeRobot: TimeRobot
    
    let width: CGFloat = 5
    let height: CGFloat = 350
    let cornerRadius: CGFloat = 5
    
    var progressBarHeight: CGFloat {
        if  timeRobot.timerActive == true {
            return CGFloat(timeRobot.timeRemaining / timeRobot.timeStart) * 350
        } else {
            return 350
        }
    }
    
    var progressBarColor: Color {
        if timeRobot.timerActive == true {
            return Color(.systemGreen)
        } else {
            return Color(.systemGray5)
        }
    }
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(Color(.systemGray5))
                .frame(width: width, height: height)
            
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(progressBarColor)
                    .frame(width: width, height: progressBarHeight)
            }
            
        }   .frame(width: width, height: height)
    }
}
