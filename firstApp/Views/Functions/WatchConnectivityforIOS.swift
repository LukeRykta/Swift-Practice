//
//  WatchConnectivityFunctions.swift
//  firstApp
//
//  Created by Nicholas Schultz on 3/19/23.
//

import Foundation
import WatchConnectivity

class PhoneConnectivity: NSObject, WCSessionDelegate, ObservableObject{
    var session : WCSession
    @Published var messageText = "No Message Received Yet..."
    init(session: WCSession = .default) {
        self.session = session
        super.init()
        self.session.delegate = self
        session.activate()
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            self.messageText = message["message"] as? String ?? "Unknown"
        }
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    
}
