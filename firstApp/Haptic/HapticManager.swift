//
//  HapticManager.swift
//  firstApp
//
//  Created by Brandon on 3/21/23.
//


import Foundation
import UIKit

fileprivate final class HapticManager {
    static let shared = HapticManager()
    
    private let feedback = UINotificationFeedbackGenerator()
    private let feedbackImpact = UIImpactFeedbackGenerator()
    private let feedbackSelection = UISelectionFeedbackGenerator()
    
    private init() {}
    
    func trigger(_ notification: UINotificationFeedbackGenerator.FeedbackType){
        feedback.notificationOccurred(notification)
    }
    
    func impact(_ notification: UIImpactFeedbackGenerator.FeedbackStyle){
        feedbackImpact.impactOccurred()
    }
    
    func selection(_ notification: UISelectionFeedbackGenerator) {
        feedbackSelection.prepare()
        feedbackSelection.selectionChanged()
    }
}

func haptic(_ notification: UINotificationFeedbackGenerator.FeedbackType) {
    HapticManager.shared.trigger(notification)
}

func impact(_ notification: UIImpactFeedbackGenerator.FeedbackStyle) {
    HapticManager.shared.impact(notification)
}

func selection(_ notification: UISelectionFeedbackGenerator) {
    HapticManager.shared.selection(notification)
}
