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
    let cornerRadius: CGFloat

    var body: some View {
        ZStack {
            
            TimeBarBackground(width: width,
                              height: height,
                              cornerRadius: cornerRadius,
                              color: Color(.systemGray5))
            
            TimeBarForeground(width: width,
                              height: height,
                              cornerRadius: cornerRadius,
                              color: timeRobot.timerActive ?
                                Color(.systemGreen) : Color(.systemGray5))
            
        }   .frame(width: width, height: height)
    }
}
