//
//  Extension.swift
//  Meditation
//
//  Created by Gabriela Rubio on 3/29/23.
//

import Foundation

extension DateComponentsFormatter {
    static let abbreviated: DateComponentsFormatter = {
        print("Initializing  DateComponentsFormatter.abbreviated")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        
        return formatter
    }()
    
    static let positional: DateComponentsFormatter = {
        print("Initializing  DateComponentsFormatter.abbreviated")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        
        return formatter
    }()
}
