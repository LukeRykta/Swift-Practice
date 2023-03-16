//
//  hapticManager.swift
//  firstApp
//
//  Created by Brandon on 3/13/23.
//

import Foundation
import UIKit

fileprivate final class hapticManager {
    
    
    static let shared = hapticManager()
    
    private let feedback = UINotificationFeedbackGenerator()
    
    private init() {}
    
    func trigger(_ notification: UINotificationFeedbackGenerator.FeedbackType) {
        feedback.notificationOccurred(notification)
    }
}

func haptic(_ notification: UINotificationFeedbackGenerator.FeedbackType) {
    hapticManager.shared.trigger(notification)
}
