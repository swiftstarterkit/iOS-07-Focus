//
//  TimeRobot.swift
//  Focus
//
//  Created by Pao Yu on 2020-07-13.
//

import SwiftUI
import Combine

class TimeRobot: ObservableObject {
    
    @Published var timeStart: Float = 50
    @Published var timeRemaining: Float = 50
    @Published var progressBarHeight: CGFloat = 350
    @Published var timerActive: Bool = false
    
    var timer: Timer?
    
    func runFocusTimer() {
        fillProgressBar()
        invalidateTimer()
        initializeTimer()
    }
    
    func resetFocusTimer() {
        fillProgressBar()
        invalidateTimer()
    }
}

extension TimeRobot {
    
    func initializeTimer() {
        timerActive = true
        timeRemaining = 50
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in self.runTimerActions()
        }
    }
    
    func invalidateTimer() {
        timerActive = false
        timer?.invalidate()
    }
    
    func runTimerActions() {
        if timeRemaining > 0  {
            reduceTime()
            resizeProgressBar()
        } else {
            invalidateTimer()
        }
    }
    
    func reduceTime() {
        timeRemaining = timeRemaining - 1
    }
    
    func resizeProgressBar() {
        progressBarHeight = CGFloat(timeRemaining / timeStart) * 350
    }
    
    func fillProgressBar() {
        progressBarHeight = 350
    }
}
