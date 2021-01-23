//
//  TimeConvert.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import Foundation

struct TimeConvert {
    static func timeString(time: Double) -> String {
        guard time > 0 else {
            return "-"
        }
        let timeInterval = TimeInterval(time)
        let hour = Int(timeInterval) / 60 % 60
        let minute = Int(timeInterval) % 60

        return String(format: TimeFormat.timeFormat, hour, minute)
    }
}
