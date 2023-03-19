//
//  HapticManager.swift
//  firstApp
//
//  Created by Brandon on 3/16/23.
//

import Foundation
import UIKit

fileprivate final class HapticManager {
    static let shared = HapticManager()
    
    private let feedback = UINotificationFeedbackGenerator()
    
    private init() {}
    
    func trigger(_ notification: UINotificationFeedbackGenerator.FeedbackType){
        feedback.notificationOccurred(notification)
    }
}

func haptic(_ notification: UINotificationFeedbackGenerator.FeedbackType) {
    HapticManager.shared.trigger(notification)
}
