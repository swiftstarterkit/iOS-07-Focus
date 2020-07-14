//
//  TimeBarBackground.swift
//  Focus
//
//  Created by Pao Yu on 2020-07-13.
//

import SwiftUI

struct TimeBarBackground: View {
    
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .foregroundColor(color)
            .frame(width: width, height: height)
    }
}
