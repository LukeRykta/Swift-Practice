//
//  HapticManagerWatch.swift
//  firstApp Watch App
//
//  Created by Brandon on 3/21/23.
//

import Foundation
import UIKit
import WatchKit

class HapticManagerWatch {
    static let shared = HapticManagerWatch()
    
    private init() {}
    
    func playHaptic() {
        WKInterfaceDevice.current().play(.click)
    }
}
